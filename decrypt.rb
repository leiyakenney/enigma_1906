require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require './modules/enigma_helper_module'

enigma = Enigma.new

message_for_cipher = File.open('message.txt', 'r')

encrypted_msg = File.open('encrypted.txt', 'w')

encrypted_text = enigma.encrypt(message_for_cipher.read)
encrypted_msg.write(encrypted_text[:encryption])
encrypted_msg.close

puts "Created 'encrypted.txt' with the key #{encrypted_text[:key].to_i} and date #{encrypted_text[:date].to_i}"
