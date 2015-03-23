print("Type in the word 'string': ")
user_input = gets.chomp
user_input.downcase!

if user_input.include?("s")
  user_input.gsub!(/s/, "th")
  puts("I like thsaying #{user_input} better - like daffy duck")
else
  puts "I need a word with the letter 's' in it!"
end
 