require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    @shift = Shift.new(12345, 280719).shift
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_character_set
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.char_set
  end

  def test_special_chars
    expected = {
      ':' => 6,
      ')' => 7,
      '!' => 13
    }
    assert_equal expected, @enigma.special_chars("hello :)world!")
  end

  def test_hash_for_shifting
    expected = {
      "A" => ['h', 'o', 'r'],
      "B" => ['e', ' ', 'l'],
      "C" => ['l', 'w', 'd'],
      "D" => ['l', 'o']
    }
    assert_equal expected, @enigma.hash_for_shifting("hello world", '12345', '280719')
    assert_equal expected, @enigma.hash_for_shifting("hello :)world!", '12345', '280719')
  end

  def test_shift_hash
    expected = {
      "A" => ['z', 'f', 'i'],
      "B" => ['j', 'e', 'q'],
      "C" => ['y', 'i', 'q'],
      "D" => ['d', 'g']
    }

    assert_equal expected, @enigma.shift_hash("hello world", '12345', '280719')
  end

  def test_shifted_hash_to_msg
    assert_equal "zjydfeigiqq", @enigma.shifted_hash_to_msg("hello world", '12345', '280719')
  end

  def test_total_msg
    assert_equal "zjydfe:)igiqq!", @enigma.total_msg("hello :)world!", '12345', '280719')
  end

  def test_total_decrypt_msg
    assert_equal "hello world", @enigma.total_decrypt_msg("zjydfeigiqq", '12345', '280719')
    assert_equal "hello :)world!", @enigma.total_decrypt_msg("zjydfe:)igiqq!", '12345', '280719')
  end

  def test_it_encrypts
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
    assert_equal "02715", @enigma.encrypt("hello world", "02715", "040895")[:key]
  end

  def test_it_decrypts
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

end
