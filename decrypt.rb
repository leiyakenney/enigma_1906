require './test/test_helper'

enigma = Enigma.new

encrypted_message = ARGV[0]
decrypted_message = ARGV[1]

decryptor = enigma.decrypt(File.read(encrypted_message))

File.write(decrypted_message, decryptor)
puts "Created #{decrypted_message} with the key #{decryptor[:key]}
     and date #{decryptor[:date]}"
