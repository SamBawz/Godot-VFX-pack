# Importing
Open up your file explorer and simply drag and drop the 'Magma' folder from this project into your own Godot project.

# Usage
	1) Select your desired object in the node tree.
	2) Go to 'Geometry' -> 'Surface Material Override' and drag and drop the 'magma_shader.tres' material file into this option.
	3) Click on the shader thumbnail to extend extra options.
	4) Adjust parameter values as needed.
If your object is bouncing up and down instead of 'waving', make sure to set the 'Subdivide' setting higher in the Mesh's settings! This setting can be found by selecting the node and then selecting 'MeshInstance3D' -> expand the mesh settings -> 'Subdivide Width' and 'Subdivide Depth'.
	
# Parameters
Select the shader material on the object to open up the extra options and browse to 'Shader Parameters'.
- Wave Speed: the speed at which the waves will flow in in both the X and Y direction.
- Wave Intensity: the height of the waves.
- Emission Color: the color of the glow.
- Emission Intensity: the intensity of the glow.
- Offset Speed: the speed at which the texture will move in in both the X and Y direction.
