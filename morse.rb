MORSE_CODE_MAP = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(code)
  MORSE_CODE_MAP[code]
end

char = decode_char('.-')
puts char

def decode_word(morse_word)
  morse_chars = morse_word.split
  decode_words = ''
  morse_chars.each do |c|
    decode_words += decode_char(c)
  end
  decode_words
end
puts decode_word('-- -.--')

def decode(morse_word)
  splitted = morse_word.split('   ')
  decode_words = ''
  splitted.each do |s|
    decode_words += decode_word(s)
  end
  decode_words
end
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
