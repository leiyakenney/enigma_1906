require './test/test_helper'

enigma = Enigma.new

encryptor = enigma.encrypt(File.read(ARGV[0]))

File.write(ARGV[1], encryptor)
puts "Created #{ARGV[1]} with the key #{encryptor[:key]}
     and date #{encryptor[:date]}"
