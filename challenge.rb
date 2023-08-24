def first_method(string)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  string = string.strip
  morse_code[string]
end

def second_method(string)
  string.split.map { |morse_word| first_method(morse_word) }.join
end

def morse(string)
  morse_chars = string.split('  ')
  decoded_words = morse_chars.map do |morse_char|
    decoded_word = second_method(morse_char)
    decoded_word
  end
  decoded_words.join(' ')
end

input = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
result = morse(input)
puts result
