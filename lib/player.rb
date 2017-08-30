module Scrabble
  class Player
    attr_reader :name, :plays
    def initialize(name)
      @name = name
      @plays = []
      @score_array = []
    end#initialize

    def play(word)
      if won?
        return false
      else
        @plays << word.upcase
        word_score = Scrabble::Scoring.score(word)
        @score_array << word_score
        return word_score
      end
    end #play word end

    def total_score
      return @score_array.inject(0){|sum, x| sum + x}

    end #total score end

    def won?
      false
    end #won end

    def highest_scoring_word
    end

    def highest_word_score
    end

  end # class

end # module
