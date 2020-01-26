require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_array = self.split(/[!.?]/)
    sentence_array = []
    split_array.each do |x|
      if x != ""
        sentence_array << x
      end
    end   
    return sentence_array.length
  end
end