def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  input = get_user_input

  case input
    when 'h'
      total += deal_card
      #display_card_total(total)
    when 's'
      #Do Nothing
    else invalid_command
  end

  total
end

def invalid_command
  puts "INVALID: Type 'h' to hit or 's' to stay"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round

  until total > 21
    total = hit?(total)
    display_card_total(total)
  end

  end_game(total)
end
