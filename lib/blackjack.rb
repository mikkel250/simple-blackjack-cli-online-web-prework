
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  case input
  when 'h'
    new_card = deal_card
    card_total += new_card
  when 's'
    #do nothing
  else 
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_total = 0
   welcome
    card_total = initial_round
    card_total = hit?(card_total)  # need to pass the return value to a var
    display_card_total(card_total)
  until card_total > 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)
end
