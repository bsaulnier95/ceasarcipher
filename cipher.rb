def caesar_cipher(string, shift = 1)
    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    encryption = non_caps.merge(caps)
    
    string.chars.map { |c| encryption.fetch(c, c) }
  end
  
  p caesar_cipher("testingzZ1Z").join
  
  