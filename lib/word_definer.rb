class Word
  attr_reader(:word)
  attr_accessor(:definitions)
  @@word_list = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = []
    @@word_list.push(@word)
  end

  def self.get_word_list
    @@word_list
  end

end
