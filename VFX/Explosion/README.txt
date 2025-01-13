# Importing
Open up your file explorer and drag and drop the ´Explosion´ folder from this project into your own Godot project.

# Usage
Simply use the included prepackaged scene wherever you want in your project. All dependencies should be included.

# Scaling the animation
Since this effect exists out of multiple parts, it is not very easy to scale the whole of the explosion. 
- The streaks and clouds have to by scaled by changing the particle sizes. This can be done by selecting the relevant particle shader file and selecting 'Display' -> 'Scale' -> 'Scale Curve'
- The flare is not a particle shader and can't be adjusted like the streaks and the clouds. Instead, select the Flare particle emitter node and select 'Draw Passes' -> 'Size'
- The cracks can directly scaled by selecting the node and adjusting the size.
- The size of the shockwave, although also a decal, is used in the animation player. Select the node and adjust the size on the timeline.
