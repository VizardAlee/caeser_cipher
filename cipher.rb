# frozen_string_literal: false

# In the encryption process, you can use a "key" which is usually a number
# This key represents the number of shifts in the alphabet required for the encryption
# Then the word or phrase which needs encrypting
# The end result will be the encrypted code
# Conversely, retrieving the information encrypted, the retriever will need the key to decrypt the information

# method to convert string to number representation
def string_to_number(str)
  splitting = str.split('')
  numberfy = splitting.map { |value| value.ord }
  numberfy.join(' ')
end

# method to convert number to new encrypted string
def number_to_string(number)
  to_word = number.map { |value| value.chr }
  to_word.join
end

# method that sums the key value with the number
def keyington(string, key)
  arrayfy = string_to_number(string).split
  intergerize = arrayfy.map { |value| value.to_i + key }
end

# method that brings everything together for full encryption
def caesar_cipher(value, key)
  number = keyington(value, key)
  number_to_string(number)
end

puts caesar_cipher('Bismillah! My name is Aliyu', 5) # if there's 'z' alphabet in the code, don't exceed key = 5

# simple method to convert evncryption to number
def encryption_to_number(value)
  value.map { |code| code.ord }
end

# full decryption method
def decrypt_cipher(value, key)
  arrayfy = value.split('')
  code = encryption_to_number(arrayfy)
  decrypt = code.map { |value| value - key}
  number_to_string(decrypt)
end

puts decrypt_cipher('Gnxrnqqfm&%R~%sfrj%nx%Fqn~z', 5) # it worked!