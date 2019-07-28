require './test/test_helper'
require 'pry'

puts 'Welcome to ENIGMA'
puts 'Would you like to enter your own key for encryption? Press Y for yes, and N for no.'
input = gets.chomp.upcase
loop do
  if input == 'N'
    puts 'Great! You will be assigned a random key.'
    puts "Your key for this round is #{@key.random_key}."
    exit
  elsif input == 'Y'
    puts 'Please enter a numeric key of up to 5 digits:'
    puts '> '
    key = gets.chomp
    until key.between?(1, 99_999)
      puts 'Numbers only, and 5 digits or fewer!'
      puts 'Please try again with a numeric key of up to 5 digits:'
      puts '> '
      key = gets.chomp
    end
    exit
  else
    puts 'That is not a valid input. Please enter Y or N: '
    input = gets.chomp.upcase
  end
end

puts 'Would you like to enter your own date of encryption? Press Y for yes, and N for no.'
input = gets.chomp.upcase
# loop do
#   if input == 'N'
#     puts "No problem! You will automatically work with today's date."
#     exit
#   elsif input == 'Y'
#     puts 'Please enter a date in DDMMYY format:'
#     puts '> '
#     # key = gets.chomp
#     # until key.between?(010101, 311299)
#     #   puts 'Numbers only, and 5 digits or fewer!'
#     #   puts 'Please try again with a numeric key of up to 5 digits:'
#     #   puts '> '
#     #   key = gets.chomp
#     # end
#     # exit
#   else
#     puts 'That is not a valid input. Please enter Y or N: '
#     input = gets.chomp.upcase
#   end
end
