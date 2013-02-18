require 'rainbow'

ANSWER = "pebble"

module Lingo

  class Game
    def initialize(answer)
      @answer = answer
    end

    def try(word)
      Result.new word, @answer
    end
  end

  class Result
    COLORS = {
      "0" => :white,
      "1" => :green,
      "2" => :yellow
    }

    attr_reader :word

    def initialize(word, answer)
      @word = @result = word.split //
      @answer = answer.split //

      mark_exact_matches!
      mark_partial_matches!
    end

    def to_s
      to_a.join
    end

    def to_a
      @result.map { |_, e, p| e ? "1" : ( p ? "2" : "0" ) }
    end

    def colored_word
      @word.zip(to_a).map { |l, m| l.color COLORS[m] }.join
    end

    def perfect?
      @result.all? { |l| l[1] }
    end

    private

    def mark_exact_matches!
      @result = @result.zip(@answer).map { |a, b| [a, a == b] }
    end

    def mark_partial_matches!
      answer = @answer.dup
      marked = @result.map { |l, e| l if e }.compact
      marked.each { |l| delete_first(answer, l) }

      @result.map! do |l, e|
        p = !e && answer.include?(l)
        delete_first(answer, l) if p
        [l, e, p]
      end
    end

    def delete_first(ar, el)
      ar.delete_at(ar.index(el) || ar.size)
    end
  end
end

game = Lingo::Game.new(ANSWER)

while true
  print "> "
  input = gets.chomp.downcase
  if input == "exit"
    break
  elsif input.size != 6
    print "Only 6 letter words!\n".color(:red)
  else
    result = game.try(input)
    print "#{result.colored_word}\n"
    if result.perfect?
      print "Great job!\n".color :green
      break;
    end
  end
end