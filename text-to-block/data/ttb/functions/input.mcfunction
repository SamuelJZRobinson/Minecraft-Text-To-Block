# Example Inputs
  # data modify storage minecraft:charparse input set value [H,e,l,l,o,' ',W,o,r,l,d,'!']
  # data modify storage minecraft:charparse input set value [ 'T', 'h', 'e', ' ', 'q', 'u', 'i', 'c', 'k', ' ', 'b', 'r', 'o', 'w', 'n', ' ', 'f', 'o', 'x', ' ', 'j', 'u', 'm', 'p', 's', ' ', 'o', 'v', 'e', 'r', ' ', 't', 'h', 'e', ' ', 'l', 'a', 'z', 'y', ' ', 'd', 'o', 'g', '.' ]
  # data modify storage minecraft:charparse input set value [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]
  # data modify storage minecraft:charparse input set value [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ]
  # data modify storage minecraft:charparse input set value [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ]
  # data modify storage minecraft:charparse input set value ['!','"','#','$','%','&',"'",'(',')','\\*','+',',','-','.','/',':',';','<','=','>','?','\\@','[','\\',']','^','_','`','{','|','}','~']

# Validation (Brief)
  # To see all valid characters vist ttb:fonts/charid_list.
  # New line, asterisk, and at sign characters are prefixed with 2 backslashes (i.e., \\n \\* \\@).
  # Backslashes are prefixed with 1 backslash (i.e., \\).
  # Line height is limted between 1 to 5 blocks.

# Display Text Instructions
  # To save time when only writing text skip to setting the value for minecraft:charparse input by typing each letter separated with commas without quotation marks.
  # Controller commands are disabled when the program runs successfully and sets isStarted charParse to 1 (true).
  # If the stamper armourstand is broken by accident reload the datapack to remove the spawn command lock.
  # Text wrapping occurs at 5 chunks (80 blocks).

  # 1) Obtain the stamp controller book with clickable actions and enable triggers using /function ttb:give_controller.
  # 2) Spawn the stamper tool in the intended location.
  # 3) Set text alignment, characters appear in the flame particle direction.
  # 4) Open the JavaScript compiler at https://onecompiler.com/javascript/3ytkse3mf.
  # 5) Copy the code below (without hashtags) and modify the phrase variable.
    # const phrase = 'INPUT';
    # const chars = Array.from(phrase);
    # console.log(chars);
  # 6) Copy the char array output into the converter at https://w3percentagecalculator.com/multiline-to-single-line-converter/.
  # 7) Click convert and copy the single line output.
  # 8) Open <map>/datapacks/text-to-block/data/ttb/functions/input.mcfunction (this script) in a text editor.
  # 9) Set the char array input value for minecraft:charparse input.
  # 10) Prefix symbols and special characters specified in input validation with the required amount of backslashes.
  # 11) Press the start button and the script will run if no initial errors occur.

# Set Input
data modify storage minecraft:charparse input set value [H,e,l,l,o,' ',W,o,r,l,d,'!']
scoreboard players set fontID fontDraw 1
scoreboard players set lineHeight fontDraw 1