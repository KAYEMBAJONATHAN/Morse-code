def decode_char(code)
    morse_code_map = {
      ".-" => "A",
      "-..." => "B",
      "-.-." => "C",
      "-.." => "D",
      "." => "E",
      "..-." => "F",
      "--." => "G",
      "...." => "H",
      ".." => "I",
      ".---" => "J",
      "-.-" => "K",
      ".-.." => "L",
      "--" => "M",
      "-." => "N",
      "---" => "O",
      ".--." => "P",
      "--.-" => "Q",
      ".-." => "R",
      "..." => "S",
      "-" => "T",
      "..-" => "U",
      "...-" => "V",
      ".--" => "W",
      "-..-" => "X",
      "-.--" => "Y",
      "--.." => "Z"
    }
  
    morse_code_map[code]
  end
  decoded_char = decode_char("...")
  decoded_char = decode_char("--..")
puts decoded_char  # Output: "A"
