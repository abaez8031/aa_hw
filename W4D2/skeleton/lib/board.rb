class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup,i|
      if i != 6 && i !=13
        cups[i] = [:stone,:stone,:stone,:stone]
      end
    end
  end

  def valid_move?(start_pos)
    raise Exception.new "Invalid starting cup" if start_pos < 0 || start_pos > 13
    raise Exception.new "Starting cup is empty" if cups[start_pos].none? { |ele| ele == :stone }
  end

  def make_move(start_pos, current_player_name)
    num_stones = cups[start_pos].count { |ele| ele == :stone }
    cups[start_pos] = []
    next_cup = (start_pos + 1) % 13
    while num_stones > 0
      if current_player_name == @name1 && next_cup < 13
        cups[next_cup] << :stone
        next_cup += 1
        next_cup = next_cup % 13
        num_stones -= 1
      elsif current_player_name == @name2 && next_cup != 6
        cups[next_cup] << :stone
        next_cup += 1
        next_cup = next_cup % 13
        num_stones -= 1
      end
    end
    next_turn(next_cup)
    render

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return ending_cup_idx if cups[ending_cup_idx].count { |ele| ele == :stone} > 1
    return :switch if cups[ending_cup_idx].count { |ele| ele == :stone } == 1
    return :prompt if (ending_cup_idx == 6 && current_player == @player1) || (ending_cup_idx == 13 && current_player == @player2)
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side_1 = 0
    side_2 = 0
    (0...6).each do |i|
      side_1 += 1 if cups[i].none? { |ele| ele == :stone }
    end
    (7...13).each do |j|
      side += 1 if cups[j].none? { |ele| ele == :stone }
    end
    return true if side_1 == 6 || side_2 == 6
    false
  end

  def winner
    return :draw if cups[6].count { |ele| ele == :stone } == cups[13].count { |ele| ele == :stone }
    return @name1 if cups[6].count { |ele| ele == :stone } > cups[13].count { |ele| ele == :stone }
    return @name2
  end
end
