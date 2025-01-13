# Importing
Open up your file explorer and simply drag and drop the 'Hexagons' folder from this project into your own Godot project.

# Usage
This shader works a little differently from normal shaders since it uses a function that is not entirely well supported. This makes it so that textures need to be manually assigned after applying the shader to an object. Follow these staps to apply this shader:
	1) Select your desired object in the node tree.
	2) Go to 'Geometry' -> 'Material Overlay' and drag and drop the 'hexagon_shader_v2.tres' material file into this option.
	3) Click on the shader thumbnail to extend extra options.
	4) Under 'Shader Parameters' drag and drop the 'hex-grid-v2.png' texture file into the 'Texture Parameter Triplaner' parameter.
	5) Adjust parameter values as needed. Triplanar sharpness especially, might need some adjusting.
	
# Parameters
Select the shader material on the object to open up the extra options and browse to 'Shader Parameters'.
- Pattern Color: the color of the texture.
- Pattern Intensity: the intensity of the glow of the pattern.
- Fresnel Color: the color at the edges of the object.
- Fresnel Intensity: the intensity of the color at the edges of the object.
- Triplanar Scale: the size of the pattern.
- Triplaner Offset: whether the pattern needs to be offset.
- Triplaner Sharpness: the sharpness of the pattern.
- Texture Parameter Triplaner: the texture map that the pattern will use.
