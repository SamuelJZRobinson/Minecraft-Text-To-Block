# 3D Rectangle
  # Horizontal
  execute if score fontAxis StampSettings matches 0 positioned ^ ^ ^ run function ttb:utility/particles/spawn_rectangle
  execute if score fontAxis StampSettings matches 0 positioned ^ ^0.5 ^ run function ttb:utility/particles/spawn_rectangle_corners
  execute if score fontAxis StampSettings matches 0 positioned ^ ^1 ^ run function ttb:utility/particles/spawn_rectangle
  # Vertical
  execute if score fontAxis StampSettings matches 1 positioned ^ ^ ^ rotated ~0 ~-90 run function ttb:utility/particles/spawn_rectangle
  execute if score fontAxis StampSettings matches 1 positioned ^ ^ ^0.5 rotated ~0 ~-90 run function ttb:utility/particles/spawn_rectangle_corners
  execute if score fontAxis StampSettings matches 1 positioned ^ ^ ^1 rotated ~0 ~-90 run function ttb:utility/particles/spawn_rectangle

# Arrow
execute positioned ^0.25 ^5 ^0 rotated ~0 ~90 run function ttb:utility/particles/spawn_arrow