
module FlipBook
  def self.flip_words(book_string)
    result = [""]
    book_string.each_char do |char|
      if char == " "
        result.insert(0,"")
      else
        result.first << char
      end
    end
    result.join(" ")
  end
end
