class Scrabble



  def score(word)
    1
    word.upcase.chars.map do |letter|
      point_values[letter]
    end.reduce(:+)

  end

  def point_values
    point_values =
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end



  def score_with_multipliers(word, space_values, multiply_word_score=1)

    extra_points = 0

    to_double = space_values.each_index.select { |position| space_values[position] == 2}

    to_triple = space_values.each_index.select { |position| space_values[position] == 3}

    to_double.map! {|num| word[num]}
    to_triple.map! {|num| word[num]}

    extra_points += point_values.fetch(to_double[0].upcase)

    #use "replace" to change the to_double array from letters to thier values from the hash??

    #go through the values hash and find each letter from the double array add this value to the extra points variable
    #go through the values hash and find each letter from the triple array and add this value TWICE to the extra points variable

    if  multiply_word_score == 2 && space_values.count >= 7
      10 + 2 * (score(word) + extra_points)
    elsif double_word_score == 2
      2 * (score(word) + extra_points)
    else
      score(word) + extra_points
    end
  end

    # And there should be a 10-point bonus for any seven letter word before the word multiplier:





end
