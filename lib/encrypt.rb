require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require './modules/enigma_helper_module'

# message = File.open(ARGV[0], "r")
# message_for_cipher = message.read.chomp.downcase
# message.close
#
# enigma = Enigma.new
# encrypted_text = enigma.encrypt(message_for_cipher)
# enigma.total_msg
#
# writer = File.open(ARGV[1], "w")
# writer.write(enigma.total_msg)
# writer.close
# puts "Created #{ARGV[1]} with the key #{enigma.encrypt[:key]} and date #{enigma.encrypt[:date]}."

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

enigma = Enigma.new
encryption = enigma.encrypt(incoming_text.chomp.downcase)

writer = File.open(ARGV[1], "w")

writer.write(encryption[:encryption])

writer.close

puts "Created 'encrypted.txt' with the key #{encryption[:key].to_i} and date #{encryption[:date].to_i}"
