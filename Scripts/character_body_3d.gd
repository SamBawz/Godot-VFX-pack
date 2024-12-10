extends CharacterBody3D


var SPEED = 7.0
const JUMP_VELOCITY = 7.0
const MOUSE_SENSITIVITY = 0.1

@export var camera_node: Camera3D

var yaw = 0.0
var pitch = 0.0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	# Handle mouse movement
	if event is InputEventMouseMotion:
		yaw -= event.relative.x * MOUSE_SENSITIVITY
		pitch -= event.relative.y * MOUSE_SENSITIVITY
		pitch = clamp(pitch, -89, 89) # Limit vertical rotation to avoid flipping

		# Update the camera rotation
		if camera_node:
			camera_node.rotation_degrees.x = pitch
		rotation_degrees.y = yaw

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	if Input.is_action_pressed("run"):
		SPEED = 14.0
	else:
		SPEED = 7.0

	# Get the input direction.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = Vector3(
		input_dir.x, 
		0, 
		input_dir.y
	).rotated(Vector3.UP, rotation.y).normalized()

	# Handle movement.
	if direction != Vector3.ZERO:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
