def pig_latin phrase
  phrase_letters = phrase.split("")
  ysplit = phrase.split('y')
  qarray = phrase.split("qu")

  if ['a','e','i','o','u'].include?(phrase[0]) # first letter is vowel
    phrase + "yay"

  elsif phrase[0] == "q"   # q is first letter
    phrase[2..-1] + phrase[0..1] + 'ay'

  elsif qarray.length > 1 # q is not the first letter
    qarray[-1] + qarray[0] + "quay"

  elsif phrase[0] == "y" # y is first letter
    (phrase[1..-1] + phrase[0] + 'ay')

  elsif phrase_letters[0] != "y" # y is not the first letter
    if ysplit.length > 1
      letters_after_y = ysplit[1].split("")
      if ['a','e','o','u','i'].include?(letters_after_y[0])
        (phrase[1..-1] + phrase[0] + 'ay') # treat y like a consonant
      else
       "y" + ysplit[1] + ysplit[0] + "ay" # treat y like a vowel
      end
    else
      (phrase[1..-1] + phrase[0] + 'ay')
    end
  end
end


puts pig_latin 'style'


# y is consonant before vowel   yellow  -- ellowyay (y+1 is a vowel)
# y is vowel before consonant   style   -- ylestay (y+1 is a consonant)


# if phrase_letters.include?("y")
# get the index of the y
# if phrase_letters[(index of y)+1] == 'a' || 'e' || 'i' || 'o' || 'u'
#
