# Text Align
execute if score align fontDraw matches 1 positioned ^0.25 ^ ^1 rotated ~180 ~180 run function ttb:stamp/particles/align_right
execute if score align fontDraw matches 2 positioned ^-0.25 ^ ^1 run function ttb:stamp/particles/align_right

# Box
execute if score align fontDraw matches 1 positioned ^-0.5 ^ ^0 rotated ~180 ~180 run function ttb:stamp/particles/square_arrow
execute if score align fontDraw matches 2 positioned ^0.5 ^ ^0 run function ttb:stamp/particles/square_arrow