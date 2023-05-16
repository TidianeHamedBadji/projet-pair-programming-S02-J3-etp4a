    def roll_dice
        rand(1..6)
    end
    
    def play_game
        position = 0
        turns = 0
    
        while position < 10
        turns += 1
        dice_roll = roll_dice
    
        case dice_roll
        when 1
            position -= 1
            puts "Vous avez fait 1 ! Vous descendez d'une marche."
        when 5, 6
            position += 1
            puts "Vous avez fait #{dice_roll} ! Vous avancez d'une marche."
        else
            puts "Vous avez fait #{dice_roll} ! Rien ne se passe."
        end
    
        puts "Vous êtes maintenant à la marche #{position}.\n\n"
        end
    
        puts "Félicitations ! Vous avez atteint la 10ème marche en #{turns} tours."
        return turns
    end
    
    def average_finish_time
        total_turns = 0
        num_games = 100
    
        num_games.times do |game|
        puts "Partie #{game + 1} :"
        total_turns += play_game
        puts "\n"
        end
    
        average_turns = total_turns.to_f / num_games
        puts "Nombre de tours moyen pour atteindre la 10ème marche sur #{num_games} parties : #{average_turns}"
    end
    
    average_finish_time
    