def caesar_cipher(string, shifts)
  characters = ("a".."z").to_a #creates an array of strings from a-z
  input = string.split("") #splits the string input letters within an array
  encrypted = "" #empty string for the encryption
  input.each do |char| #for each character
    i = characters.index(char) #assign "i"
    shifted = (i + shifts) % characters.length
    encrypted << characters[shifted]
  end
  encrypted
end

p caesar_cipher("aliyu", 3)

