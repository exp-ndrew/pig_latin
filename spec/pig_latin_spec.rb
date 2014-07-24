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

    it('processes a y in the first character like a consonant') do
      pig_latin('yellow').should(eq("ellowyay"))
    end

    it('processes a y as a consonant if is before a vowel') do
      pig_latin('cygnet').should(eq("ygnetcay"))
    end

    it('processes a y as a vowel if is before a consonant') do
      pig_latin('style').should(eq("ylestay"))
    end
  end
