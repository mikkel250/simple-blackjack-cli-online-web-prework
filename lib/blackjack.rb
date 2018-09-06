
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
 puts "Your cards add up to #{card_total}"
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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
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
  
  display_card_total(total)
  total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  case input
  when 'h'
    new_card = deal_card
    card_total += new_card
  when 's'
    #card_total
    
  else 
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  card_total = 0
   welcome
    card_total = initial_round
    card_total = hit?(card_total)  # need to pass the return value to a var
    display_card_total(card_total)
  until card_total > 21
    #welcome
    #initial_round
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)
end



