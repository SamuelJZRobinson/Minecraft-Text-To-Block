# Fonts:
  # Possible characters: /function ttb:fonts/char_id_guide
  # Fonts only place characters they are designed to support.

# Convert Text To Array:
  # 1) Open the JavaScript compiler at https://onecompiler.com/javascript/3ytkse3mf.
  # 2) Copy the code below and replace "Hello world!" with a custom phrase.
function escapeSpecialChars(char) {
  const escapeMap = {
    '\n': '\\\\n',
    '\t': '\\\\t',
    '\\': '\\\\',
    '*': '\\\\*',
    '@': '\\\\@',
  };

  return escapeMap[char] || char;
}

const chars = Array.from("Hello world!");

const escapedChars = chars.map(escapeSpecialChars);
console.log(`['${escapedChars.join("','")}']`);
  # 3) Copy the output into /function ttb:states/stages/2_idle/control/input/set/set_paste_input.

# Input Examples:
  # Standard:
    # data modify storage minecraft:StampFont input set value [ 'T', 'h', 'e', ' ', 'q', 'u', 'i', 'c', 'k', ' ', 'b', 'r', 'o', 'w', 'n', ' ', 'f', 'o', 'x', ' ', 'j', 'u', 'm', 'p', 's', ' ', 'o', 'v', 'e', 'r', ' ', 't', 'h', 'e', ' ', 'l', 'a', 'z', 'y', ' ', 'd', 'o', 'g', '.' ]
    # data modify storage minecraft:stamp input set value ['!','"','#','$','%','&',"'",'(',')','\\*','+',',','-','.','/',':',';','<','=','>','?','\\@','[','\\',']','^','_','`','{','|','}','~','0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    # data modify storage minecraft:stamp input set value ['!','"','#','$','%','&',"'",'(',')','\\*','+',',','-','.','/',':',';','<','=','>','?','\\@','[','\\',']','^','_','`','{','|','}','~']
    # data modify storage minecraft:stamp input set value ['0','1','2','3','4','5','6','7','8','9']
    # data modify storage minecraft:stamp input set value ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    # data modify storage minecraft:stamp input set value ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  # Shorthand (Letters Only):
    # data modify storage minecraft:StampFont input set value [H,e,l,l,o,' ',W,o,r,l,d,'!']