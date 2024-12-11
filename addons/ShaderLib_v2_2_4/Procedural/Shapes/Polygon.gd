@tool
class_name VisualShaderNodeProceduralPolygon extends ShaderLib

func _init() -> void:
	output_port_for_preview = 0

func _get_name() -> String:
	return "Polygon"

func _get_category() -> String:
	return "Procedural/Shapes"

func _get_description() -> String:
	return "Generates a regular polygon shape based on input UV at the size specified by inputs width and height. The polygon's amount of sides is determined by input sides."

func _get_return_icon_type() -> VisualShaderNode.PortType:
	return PORT_TYPE_SCALAR

func _get_input_port_count() -> int:
	return 4

func _get_input_port_name(port: int) -> String:
	match port:
		0:
			return "uv"
		1:
			return "sides"
		2:
			return "width"
		3:
			return "height"
	return ""

func _get_input_port_type(port: int) -> VisualShaderNode.PortType:
	match port:
		0:
			return PORT_TYPE_VECTOR_2D
		1:
			return PORT_TYPE_SCALAR_INT
		2, 3:
			return PORT_TYPE_SCALAR
	return PORT_TYPE_SCALAR

func _get_input_port_default_value(port: int) -> Variant:
	match port:
		1:
			return 3
		2, 3:
			return 0.5
		_:
			return null

func _get_output_port_count() -> int:
	return 1

func _get_output_port_name(port: int) -> String:
	return "output"

func _get_output_port_type(port: int) -> VisualShaderNode.PortType:
	return PORT_TYPE_SCALAR

func _get_global_code(mode: Shader.Mode) -> String:
	return "#include \"res://addons/ShaderLib_%s/Procedural/Procedural.gdshaderinc\"" % [version]

func _get_code(input_vars: Array[String], output_vars: Array[String], mode: Shader.Mode, type: VisualShader.Type) -> String:
	var uv: String = "UV"

	if input_vars[0]:
		uv = input_vars[0]

	var sides: String = input_vars[1]
	var width: String = input_vars[2]
	var height: String = input_vars[3]

	return output_vars[0] + " = polygon_shape(%s, %s, %s, %s);" % [uv, sides, width, height]
