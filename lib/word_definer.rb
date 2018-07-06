class Word
  attr_reader(:word)
  attr_accessor(:definitions)
  # @@word_list

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = []

  end

end
