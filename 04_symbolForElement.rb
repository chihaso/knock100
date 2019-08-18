sentence = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
separated_sentence = sentence.split(" ")
one_character_symbol_indexes = [1, 5, 6, 7, 8, 9, 15, 16, 19]
symbol_for_element = Hash[]
for i in 1..20
  if one_character_symbol_indexes.include?(i)
    symbol_for_element[i] = separated_sentence[i - 1][0, 1]
  else
    symbol_for_element[i] = separated_sentence[i - 1][0, 2]
  end
end

puts symbol_for_element
