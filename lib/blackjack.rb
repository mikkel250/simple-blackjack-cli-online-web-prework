
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
  #puts "Dealing card...card is #{card}."
  #card_total = card
  #display_card_total(card.to_i)
  
end

def display_card_total(card_total)
  # code #display_card_total here
  
  #card_total = card_total + number
 "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
    #puts card1
    #card1
  card2 = deal_card
   #puts card2
    #card2
  total = card1 + card2
    #puts total
  total
  display_card_total(total)
  
end

def hit?
  # code hit? here
  prompt_user
  input = get_user_input
  if input.downcase == 'h'
    deal_card
  elsif input.downcase == 's'
    puts "Are you sure? (y/n)"
    sure = get_user_input
      if sure.downcase == 'y'
        display_card_total
      else
        prompt_user
      end
  else
    invalid_command
  end
    display_card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  until card_total > 21
    welcome
    initial_round
    hit?
    display_card_total
  end
end
    
