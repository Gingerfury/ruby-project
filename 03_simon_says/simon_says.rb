def echo(input)
  return input.to_s
end

def shout(input)
  return input.to_s.upcase
end

def repeat(input, b = nil)
  output = input + " " + input
  if b
    (b - 2).times {output += " " + input}
  end
  return output
end

def start_of_word(input, location)
  return input[0..location - 1]
end

def first_word(input)
  return input.split.first
end

def titleize(input)
  stop_words = %w{a an and the or for of nor over}
  output = input.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
  output = output[0].capitalize + output[1..input.length]
  return output
end
