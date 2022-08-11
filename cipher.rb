def caesar_cipher(string, shifts)
  characters = ("a".."z").to_a #creates an array of strings from a-z
  input = string.split("") #splits the string input letters within an array
  encrypted = "" #empty string for the encryption
  input.each do |char| #for each character
    i = characters.index(char) #assign i as the index position (from characters) found in the input
    shifted = (i + shifts) % characters.length #add it to the number of shifts given and ensure it's within the characters length
    encrypted << characters[shifted] #append the shifted to the encrypted string variable
  end
  encrypted #return the ciphered text
end

p caesar_cipher("aliyu", 3)

def decrypt(encryption, shifts)
  characters = ("a".."z").to_a
  input = encryption.split('')
  decryption = ""
  input.each do |char|
    i = characters.index(char)
    shifted_back = (i - shifts) % characters.length #all we had to do was change the plus to minus
    decryption << characters[shifted_back]
  end
  decryption
end

p decrypt("dolbx", 3)