class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over == true
      take_turn
    end
    reset_game
    game_over_message
  end

  def take_turn
      show_sequence
      require_sequence
      round_success_message
      @sequence_length += 1
      add_random_color
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      p color
    end
  end

  def require_sequence
    (0...seq.length).each do |i|
      cur_color = seq[i]
      color_guess = gets.chomp
      if color_guess != cur_color
        game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "You win this round"
  end

  def game_over_message
    p "YOU LOSE!"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
