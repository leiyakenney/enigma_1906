require './test/test_helper'

enigma = Enigma.new

message = ARGV[0]
encrypted_text = ARGV[1]

encryptor = enigma.encrypt(File.read(message))

File.write(encrypted_text, encryptor)
puts "Created #{encrypted_text} with the key #{encryptor[:key]}
     and date #{encryptor[:date]}"
