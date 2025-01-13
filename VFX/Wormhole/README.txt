# Importing
This visual effect makes use of a shader library to more easily create the parallax effect. Install the library [here](https://github.com/DigvijaysinhGohil/Godot-Shader-Lib/?tab=readme-ov-file). You can then open up your file explorer and simply drag and drop the 'Wormhole' folder from this project into your own Godot project. To make the parallax effect works the heightmap needs to be set manually.

# Usage
	1) Select your desired object in the node tree. For this specific shader I would recommend a flat surface.
	2) Go to 'Geometry' -> 'Material Overwrite' and drag and drop the 'portal_shader.tres' material file into this option.
	3) Click on the shader thumbnail to extend extra options.
	4) Under 'Shader Parameters' drag and drop the 'portal_heightmap_inverted.pnmg' texture file into the 'Heightmap' parameter.
	5) Adjust parameter values as needed.
	
# Parameters
Select the shader material on the object to open up the extra options and browse to 'Shader Parameters'.
- Color: changes the main color of the wormhole.
- Depth: changes how deep the portal appears. This only works with the aforementioned parallax library.
- Fresnel Intensity: affects how intens the glow of the color on the outer edges is.
- Fresnel Color: affects the color at the edges of the wormhole.
- Heightmap: affects the shape the parallax will take.
- Min Size: the smallest possible size for the wormhole.

- Scanline Speed: the speed at which the lines move downwards.
- Scanline Scale: how big the lines should be.
- Scanline Color: the color of the lines.
- Shader Intensity: the intensity of the glow.
- Fresnel Color: the color at the edges of the object.
- Fresnel Intensity: the intensity of the color at the edges of the object.
