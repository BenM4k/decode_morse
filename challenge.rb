$morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
}

def first_method(string)
    string = string.strip
    morse_char = $morse_code[string] || ''
    morse_char
end

def second_method(string)
    morse_chars = string.split(' ').map { |morse_word| first_method(morse_word) || ' '}.join
    morse_chars
end

def morse(string)
    morse_chars = string.split('  ')
    decoded_words = morse_chars.map do |morse_char|
        decoded_word = second_method(morse_char)
        decoded_word
    end

    decoded_phrase = decoded_words.join(' ')
    decoded_phrase
end

input = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
first_input = '.-'
result = first_method(first_input)
second_input = '.- -... -..-'
result = second_method(second_input)
result = morse(input)
puts result
