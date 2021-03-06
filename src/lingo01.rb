require 'rainbow'

ANSWER = "pickle"
COLORS = {
  "0" => :white,
  "1" => :green,
  "2" => :yellow
}

def try(word, answer)
  word   = word.split //
  answer = answer.split //

  word   = mark_exact_matches(word, answer)
  word   = mark_partial_matches(word, answer)

  word.map do |l, e, p|
    e ? "1" : ( p ? "2" : "0" )
  end.join
end

def mark_exact_matches(word, answer)
  word.zip(answer).map { |a, b| [a, a == b] }
end

def mark_partial_matches(word, answer)
  word.map { |l, e| [l, e, answer.include?(l)] }
end

def colorize(word, result)
  word   = word.split //
  result = result.split //

  word.zip(result).map { |l, m| l.color COLORS[m] }.join
end

while true
  print "> "
  input = gets.chomp.downcase
  if input == "exit"
    break
  elsif input.size != 6
    print "Only 6 letter words!\n".color(:red)
  else
    result = try(input, ANSWER)
    print result + "\n"
    print colorize(input, result) + "\n"
  end
end