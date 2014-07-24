require('rspec')
require('pig_latin')
  describe('pig_latin')do
    it('will add "ay" to any word') do
      pig_latin('anchor').should(eq('anchoryay'))
    end

    it('if the word starts with a consonant, it will move a consonant to the end before adding -ay') do
      pig_latin('boat').should(eq('oatbay'))
    end

    it('if a vowel follows a "q", move all letters before and move to the end and add "ay"') do
      pig_latin('squeal').should(eq("ealsquay"))
    end
  end
