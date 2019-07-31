require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require './modules/enigma_helper_module'

enigma = Enigma.new

input_text = ARGV[0]
encryption_output = ARGV[1]

encryptor = enigma.encrypt(File.read(input_text))

File.write(encryption_output, encryptor[:encryption])
puts "Created #{encryption_output} with the key #{encryptor[:key]}
      and date #{encryptor[:date]}"
