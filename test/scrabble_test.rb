gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
    assert_equal 8, Scrabble.new.score("hello")
  end

  def test_it_can_score_with_multipliers
    game = Scrabble.new
    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
    assert_equal 18, game.score_with_multipliers('hello', [1,2,1,1,1], 2)
    assert_equal 58, game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)

  end


  def
    skip

  end

end
