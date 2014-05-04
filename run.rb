# RubyMonk — Primer

def palindrome?(sentence)
  sentence.downcase!
  sentence.gsub! ' ',''
  result = true
  for i in (0...sentence.length / 2)
    right_index = sentence.length - i - 1
    result = false unless sentence[i] == sentence[right_index]
  end
  result
end


p palindrome? "Never odd or evene"
