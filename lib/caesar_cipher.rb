def get_inputs
  puts "Une phrase :"
  print "> "
  sentence = gets.chomp

  puts "Un décalage :"
  print "> "
  shift = gets.chomp.to_i

  if sentence == "" || shift < 1
    get_inputs()
    return
  end

  return {
    sentence: sentence,
    shift: shift
  }
end

def find_letter(letter, shift)
  dictionnary_downcase = ("a".."z").to_a
  dictionnary_upcase = ("A".."Z").to_a

  if dictionnary_downcase.include? letter # C'est une lettre minuscule
    position = dictionnary_downcase.index(letter)
    dictionnary_downcase.rotate!(shift)

    return dictionnary_downcase[position]
  elsif dictionnary_upcase.include? letter # C'est une lettre majuscule
    position = dictionnary_upcase.index(letter)
    dictionnary_upcase.rotate!(shift)

    return dictionnary_upcase[position]
  else # Un caractère autre qu'une lettre
    return letter
  end
end

def convert_sentence(sentence, shift)
  sentence.chars.map! { |letter| find_letter(letter, shift) }.join
end

def render(result_sentence)
  return "Résultat : "  +  result_sentence
end

def perform
  inputs = get_inputs()
  puts render(convert_sentence(inputs[:sentence], inputs[:shift]))
end

perform()
