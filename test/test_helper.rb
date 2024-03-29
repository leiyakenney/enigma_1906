require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end

require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require 'date'
require 'pry'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require './modules/enigma_helper_module'
