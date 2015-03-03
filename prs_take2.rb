#1 All players pick either Paper, Rock or Scissors
#2 You compare the choices: Paper > Rock, Rock > Scissors, Scissors > Paper. Tied if same.
#3 Ask to play again

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'} 
puts "Welcome to Paper, Rock, Scissors!"

def winning_display_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper smothers Rock!"
  when 'r'
    puts "Rock smashes Scissors"
  when 's'
    puts "Scissors shred Paper!"  
  end
end 

loop do 
  begin 
  puts "Choose one: r / p / s ?"
  player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  
  computer_choice = CHOICES.keys.sample
  
  if (player_choice == 'p' && computer_choice == 'r')||(player_choice == 'r' && computer_choice == 's')||(player_choice == 's' && computer_choice == 'p')
    winning_display_message(player_choice)
    puts "You win!"
  elsif player_choice == computer_choice
    puts "It's a TIE game!!"
  else 
    winning_display_message(computer_choice)
    puts "Computer wins!"
  end 
  
  puts "Play again (y/n)?"
  continue_reply = gets.chomp.downcase
  break if continue_reply != 'y'
end

puts "Thanks for playing!"