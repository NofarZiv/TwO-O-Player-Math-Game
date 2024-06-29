require './player'

class Game 

  def initialize

    @p1 = "Player 1"
    @p2 = "Player 2"
    @current_player = @p1

  end

  def start(players)

    loop do

      question = Question.new
      puts "#{@current_player}: #{question.new_question}"
      print "> "
      answer = $stdin.gets.chomp.to_i

      if answer == question.right_answer
        puts "#{@current_player}: YES! You are correct"
      else
        puts "#{@current_player}: Seriously? No!"
        if @current_player == @p1
          players[0].sub 
        else
          players[1].sub
        end
      end


      puts "P1: #{players[0].lives}/3 vs P2: #{players[1].lives}/3"

      if players[0].lives == 0
        puts "Player 2 wins with a score of #{players[1].lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      elsif players[1].lives == 0
        puts "Player 1 wins with a score of #{players[0].lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      else
        new_turn

      end
    end
  end


  def new_turn

    puts "----- NEW TURN -----"

    if @current_player == @p1
      @current_player = @p2
    else 
      @current_player = @p1
    end

  end


end