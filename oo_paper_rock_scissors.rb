class Player
  CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'} 
  attr_accessor :name 
  attr_accessor :choice
  
  def initialize(name)
    @name = name
    @choice 
  end
end

class Human < Player
  def make_choice 
    begin 
    puts "Choose one: r / p / s ?"
    c = gets.chomp.downcase
    end until CHOICES.keys.include?(c)
    
    self.choice = c 
    puts "You chose #{CHOICES[choice]}."
  end 
end 

class Computer < Player
  def make_choice 
    self.choice = CHOICES.keys.sample
    puts "Computer chooses #{CHOICES[choice]}"
  end 
end 

class Game 
  attr_reader :player, :computer
  
  def initialize
    @player = Human.new("DeShawn")
    @computer = Computer.new("Johnny Five")
  end
  
  def play
    player.make_choice
    computer.make_choice
    compare_choices 
  end
  
  def compare_choices
    if player.choice == computer.choice 
      puts "It's a tie!"
    elsif (player.choice == 'p' && computer.choice == 'r')||(player.choice == 'r' && computer.choice == 's')||(player.choice == 's' && computer.choice == 'p')
      winning_display_message(player.choice)
      puts "You win!"
    else
      winning_display_message(computer.choice)
      puts "You lose..."
    end 
  end 
  
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
end

prs = Game.new.play 