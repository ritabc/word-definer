class Word
  attr_reader(:word)
  attr_accessor(:definitions)
  @@word_list = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = []
    @@word_list.push(self)
  end

  def add_definition(definition)
    @definitions.push(definition)
  end

  def self.get_word_list
    @@word_list
  end

  def self.clear
    @@word_list = []
  end

  def self.find(word_to_find)
    @@word_list.each do |item|
      if item.word == word_to_find
        return item
      end
    end
  end

end
