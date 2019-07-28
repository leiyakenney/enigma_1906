require './test/test_helper'

enigma = Enigma.new

decryptor = enigma.decrypt(File.read(ARGV[0]))

File.write(ARGV[1], decryptor)
puts "Created #{ARGV[1]} with the key #{decryptor[:key]}
     and date #{decryptor[:date]}"
