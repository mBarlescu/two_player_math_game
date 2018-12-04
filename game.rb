require_relative 'player'

  class Game
    attr_accessor :num1, :num2, :player1, :player2, :sign

    def initialize (player1, player2)
      @num1 = num1
      @num2 = num2
      @player1 = player1
      @player2 = player2
      @question = [:+, :-, :*]
      @sign = "+"
    end

    def math_question
      @question.sample

    end

    def player1_turn
      @sign = math_question
      answer = 0
      print "#{@player1.name}, pick a number between 1-10: "
      @num1 = STDIN.gets.chomp
      print "#{@player1.name}, pick another number between 1-10: "
      @num2 = STDIN.gets.chomp
      print "#{@player2.name}, what is #{@num1} #{@sign} #{@num2}? "
      answer = STDIN.gets.chomp
      answer.to_i
      if answer == eval("#{@num1} #{@sign} #{@num2}").to_s
       puts "good!"
       puts "#{@player1.name}: #{@player1.life} || #{player2.name}: #{player2.life}"
     else
      puts "wrong, you lose one life"
      @player2.life -= 1
      puts "#{@player1.name}: #{@player1.life} || #{player2.name}: #{player2.life}"
      end

    end

    def player2_turn
      @sign = math_question
      answer = 0
      print "#{@player2.name}, pick a number between 1-10: "
      @num1 = STDIN.gets.chomp
      print "#{@player2.name}, pick another number between 1-10: "
      @num2 = STDIN.gets.chomp
      print "#{@player1.name}, what is #{@num1} #{@sign} #{@num2}? "
      answer = STDIN.gets.chomp
      answer.to_i
      if answer == eval("#{@num1} #{@sign} #{@num2}").to_s
       puts "good!"
     else
      puts "wrong, you lose one life"
      @player1.life -= 1
      puts "#{@player1.name}: #{@player1.life} || #{player2.name}: #{player2.life}"
      end

    end



  end

  puts "Player 1, enter name: "
  player1 = Player.new(STDIN.gets.chomp)
  puts "Player 2, enter name: "
  player2 = Player.new(STDIN.gets.chomp)
  game1 = Game.new(player1, player2)
  game1.player1_turn