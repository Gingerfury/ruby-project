#write your code here
def translate input
  vowel = ["a","e","i","o","u"]
  output = []
  list = input.split(" ")
  list.each do |i|
    if i[0] == "q"
      word = i[2..i.length] + i[0..1] + "ay"
      output.push(word)
    elsif i[1] == "q"
      word = i[3..i.length] + i[0..2] + "ay"
      output.push(word)
    elsif vowel.include? i[0]
      word = i + "ay"
      output.push(word)
    elsif vowel.include? i[1]
      word = i[1..i.length] + i[0] + "ay"
      output.push(word)
    elsif vowel.include? i[2]
      word = i[2..i.length] + i[0..1] + "ay"
      output.push(word)
    elsif vowel.include? i[3]
      word = i[3..i.length] + i[0..2] + "ay"
      output.push(word)
    end
  end
  final = output.join(" ")
  return final
end
