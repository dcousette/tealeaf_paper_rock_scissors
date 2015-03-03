# 1. players make a pick: r, p, or s.
# 2. compare choices: paper > rock, rock > scissors, scissors > paper. tie only if pick same.
# 3. play again?

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper smothers Rock!"
  when 'r'
    puts "Rock crushes Scissors!"
  when 's'
    puts "Scissors shreds Paper!"
  end
end 

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts "Welcome to Paper, Rock, Scissors!"

loop do 
  #player makes pick 
  begin
    puts "Pick one (r / p / s):"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  
  #computer makes pick
  computer_choice = CHOICES.keys.sample
  
  #compare the picks 
  if player_choice == computer_choice
    puts "Tie game"
  
  #if player wins  
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's')||(player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You won!"
  #if computer wins
  else
    display_winning_message(computer_choice)
    puts "Computer won!"
  end
  
  #continue playing?
  puts "Play again (y/n)?"
  reply = gets.chomp.downcase
  break if reply != "y"
end 

puts "Thanks for playing!"