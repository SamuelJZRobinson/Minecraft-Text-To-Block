# 3D Rectangle
execute if score textAlign StampSettings matches 1 positioned ^1 ^ ^ rotated ~180 ~180 run function ttb:utility/particles/spawn_rectangle
execute if score textAlign StampSettings matches 1 positioned ^1 ^0.5 ^ rotated ~180 ~180 run function ttb:utility/particles/spawn_rectangle_corners
execute if score textAlign StampSettings matches 1 positioned ^1 ^1 ^ rotated ~180 ~180 run function ttb:utility/particles/spawn_rectangle
execute if score textAlign StampSettings matches 2 positioned ^ ^ ^ run function ttb:utility/particles/spawn_rectangle
execute if score textAlign StampSettings matches 2 positioned ^ ^0.5 ^ run function ttb:utility/particles/spawn_rectangle_corners
execute if score textAlign StampSettings matches 2 positioned ^ ^1 ^ run function ttb:utility/particles/spawn_rectangle

# Arrow
execute if score textAlign StampSettings matches 1 positioned ^0.25 ^5 ^0 rotated ~180 ~90 run function ttb:utility/particles/spawn_arrow
execute if score textAlign StampSettings matches 2 positioned ^0.25 ^5 ^0 rotated ~0 ~90 run function ttb:utility/particles/spawn_arrow