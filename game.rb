require_relative 'player'

  class Game
    attr_accessor :num1, :num2, :player1, :player2

    def initialize
      @num1 = num1
      @num2 = num2
      @player1 = player1
      @player2 = player2
      question = ["#{num1} + #{num2}?", "#{num1} - #{num2}?", "#{num1} * #{num2}?"]
    end

    def math_question
      addition = "#{num1} + #{num2}?"
      subtraction = "#{num1} - #{num2}?"
      multiplication = "#{num1} * #{num2}?"
    end

    def create_player
      print "player 1, enter name: "
      player1 = Player.new(STDIN.gets.chomp)
      puts "#{player1.name} has joined the game"
      @player1 = "#{player1.name}"
      print "player 2, enter name: "
      player2 = Player.new(STDIN.gets.chomp)
      puts "#{player2.name} has joined the game"
      @player2 = "#{player2.name}"
    end

    def player1_turn
      print "#{@player1}, pick a number between 1-10: "
      @num1 = STDIN.gets.chomp
      print "#{@player1}, pick another number between 1-10: "
      @num2 = STDIN.gets.chomp
      print "#{@player}"
    end

  end

  game1 = Game.new
  game1.create_player
  puts game1.player1
  game1.player1_turn
  puts game1.num1
  puts game1.num2