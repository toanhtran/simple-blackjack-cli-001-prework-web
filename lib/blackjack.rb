def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  card_total = total.to_i
  puts "Your cards add up to #{card_total}"
  end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  prompt_user
  input = gets.chomp.downcase
end

def end_game(player_card_total)
  card_total = player_card_total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 card1 = deal_card
 card2 = deal_card
 card_total = card1 + card2
 display_card_total(card_total)
 return card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a vaild command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
    end_game(card_total)
end
    
