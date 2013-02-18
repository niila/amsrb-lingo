require 'rainbow'

ANSWER = "pickle"

def try(word, answer)
  word   = word.split //
  answer = answer.split //

  word.zip(answer).map { |a, b| a == b ? "1" : "0" }.join
end

def colorize(word, result)
  word   = word.split //
  result = result.split //

  word.zip(result).map do |l, m|
    l.color( m == "1" ? :green : :white )
  end.join
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