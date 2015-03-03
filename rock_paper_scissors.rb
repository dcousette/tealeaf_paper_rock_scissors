# 1. players make a pick: r, p, or s.
# 2. compare choices: paper > rock, rock > scissors, scissors > paper. tie only if pick same.
# 3. play again?



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
    puts "You picked #{player_choice}. Computer picked #{computer_choice}. You win!"
  
  #if computer wins
  elsif (computer_choice == 'p' && player_choice == 'r')||(computer_choice == 'r' && player_choice == 's')||(computer_choice == 's' && player_choice == 'p')
    puts "You picked #{player_choice}. Computer picked #{computer_choice}. Computer wins!"
  end
  
  #continue playing?
  puts "Play again (y/n)?"
  reply = gets.chomp.downcase
  break if reply =="n"
end 

