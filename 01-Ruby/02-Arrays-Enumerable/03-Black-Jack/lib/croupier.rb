require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score

  return "your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score == 21
    return "black jack"
      elsif player_score > 21
        return "lose"
          elsif player_score > bank_score
            return "you beat the bank! you wins"
              else
                return "you lose"
end
end


def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
 player_score == 0

  while player_score <= bank_score
    puts "card? (type 'y' or 'yes' for a new card)"
      answer = gets.chomp
      if answer == "y" || response == "yes"
        player_score = player_score + pick_player_card
      else
        return "lose"
     end
  end
end
