require('pry')
require('rspec')
require('word_definer')

describe("Word") do
  describe("#initialize") do
    it("will initialize a word and create an instance variable which can be read") do
      new_word = Word.new({:word => 'about'})
      expect(new_word.word).to(eq("about"))
    end
    it("will initialize a word and allow a user to add a definition") do
      new_word = Word.new({:word => "tertiary"})
      new_word.definitions.push("terse in nature")
      expect(new_word.definitions[0]).to(eq("terse in nature"))
    end
  end
  # it("will update @@word_list when a word is added")
end
