def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   total = deal_card + deal_card
   display_card_total(total)
   return total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == "h"
   card_total = card_total + deal_card
  elsif answer == "s"
   
  else
    invalid_command
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    total_cards = initial_round
  until total_cards > 21 do
    total_cards = hit?(total_cards)
    display_card_total(total_cards)
  end
   end_game(total_cards)
end
