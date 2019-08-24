class Book
  attr_reader :title

  def title=(newtitle)
    words = newtitle.split(" ")
    words[0] = words[0].upcase
    words = words.map do |word|
      if "and in the of".include?(word) && word !="i"
        word
      else
        word.capitalize
      end
    end
    @title = words.join(" ")
  end
end
