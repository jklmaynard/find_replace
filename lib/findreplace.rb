class String
  define_method(:findreplace) do |word1, word_change|
    origin_sentence = self.split()

    origin_sentence.each_with_index() do |word, num|
      if word == word1
        origin_sentence.delete_at(num).insert(num, word_change)
      end
    end
    origin_sentence.join(" ")
  end
end
