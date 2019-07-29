require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require './modules/enigma_helper_module'

enigma = Enigma.new

message_for_decryption = File.open('encrypted.txt', 'r')

decrypted_msg = File.open('decrypted.txt', 'w')

decrypted_text = enigma.decrypt(message_for_decryption.read, ARGV[2], ARGV[3])
decrypted_msg.write(decrypted_text[:decryption])
decrypted_msg.close

puts "Created 'decrypted.txt' with the key #{decrypted_text[:key].to_i} and date #{decrypted_text[:date].to_i}"
