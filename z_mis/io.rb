require 'io/console'

puts "Press any key to test io-console functionality. Press 'q' to quit."

loop do
  input = STDIN.getch # Waits for a single keypress
  puts "You pressed: #{input.inspect}"

  break if input.downcase == 'q'
end

puts "io-console is working properly!"