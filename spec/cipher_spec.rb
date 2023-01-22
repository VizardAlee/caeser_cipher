# frozen_string_literal: false

require './lib/cipher'

describe Cipher do
  describe '#str_to_num' do
    it 'returns number equivalent of words' do
      conv = Cipher.new
      expect(conv.str_to_num('Ibrahim Suleiman')).to eq('73 98 114 97 104 105 109 32 83 117 108 101 105 109 97 110')
    end
  end

  describe '#num_to_str' do
    it 'retruns string equivalent of numbers' do
      conv = Cipher.new
      expect(conv.num_to_str('73 98 114 97 104 105 109 32 83 117 108 101 105 109 97 110')).to eq('Ibrahim Suleiman')
    end
  end

  describe '#encrypt' do
    it 'returns encrypted str' do
      conv = Cipher.new
      expect(conv.encrypt('Ibrahim Suleiman', 5)).to eq('Ngwfmnr%Xzqjnrfs')
    end
  end

  describe '#decrypt' do
    it 'returns decrypted str' do
      conv = Cipher.new
      expect(conv.decrypt('Ngwfmnr%Xzqjnrfs', 5)).to eq('Ibrahim Suleiman')
    end
  end
end
