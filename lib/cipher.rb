# frozen_string_literal: false

# caesar cipher:
# takes string, converts to numbers, add a number(key)
# revert to string

# Caesar Cipher class
class Cipher
  def str_to_num(str, arr = [])
    str.split('').each { |val| arr << val.ord }
    arr.join(' ')
  end

  def num_to_str(num_str, arr = [])
    num_str.split.each { |val| arr << val.to_i.chr }
    arr.join
  end

  def encrypt(str, key, arr = [])
    str.split('').each { |val| arr << val.ord + key }
    num_str = arr.join(' ')
    num_to_str(num_str)
  end

  def decrypt(str, key, arr = [])
    str.split('').each { |val| arr << val.ord - key }
    num_str = arr.join(' ')
    num_to_str(num_str)
  end
end
