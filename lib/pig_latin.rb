def pig_latin phrase
  phrase_array = phrase.split("qu")
  if ['a','e','o','u','i'].include?(phrase[0])
    phrase + "yay"
  elsif phrase[0] == "q"
    phrase[2..-1] + phrase[0..1] + 'ay'
  elsif phrase_array.length > 1
    phrase_array[-1] + phrase_array[0] + "quay"
  else
    (phrase[1..-1] + phrase[0] + 'ay')
  end
end


puts pig_latin 'squeal'
