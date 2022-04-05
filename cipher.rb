
  def cipher(string,key)
    namem=[]
    string.downcase.bytes.map do|c|
    namem.push(c+key<123?(c+key):(c+key-26))
    end
    namem.pack('c*')
    end
    puts cipher('What a string!',5)