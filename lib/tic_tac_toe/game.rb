class Game
  PLAYER_X = 'x'
  PLAYER_O = 'o'

  def initialize
    @board = [[], [], []]
    @last_player = nil
    @winner = nil
  end

  # move a player(o or x) to coordinates x by y along a 3x3 board using a zero based index.
  def move(player, x, y)
    raise "Illegal move. Already taken" unless @board[x][y].nil?

    @board[x][y] = player
    @last_player = player
    check_winner(x, y)
  end

  def winner
    @winner
  end

  private

  # Check winner only will check combinations based on the last known move.
  # Prevents extra checks for combinations that could not have changed.
  def check_winner(last_x, last_y)
    # get vertical based on last_x
    winning_combination { @board.map {|row| @last_player if row[last_y] == @last_player} }

    # get horizontal based on last_y
    winning_combination { @board[last_x].find_all {|column| column == @last_player} }

    # get diagonal down right matches
    winning_combination { [@board[0][0], @board[1][1], @board[2][2] ] } if last_x == last_y

    # get diagonal up right matches
    winning_combination { [@board[2][0], @board[1][1], @board[0][2] ]}  if last_x == 2 && last_y == 0 || last_x == 1 && last_y == 1 || last_x == 0 && last_y == 2
  end

  def winning_combination(&block)
    return if @winner

    array = yield
    if array.compact.size == 3
      @winner = @last_player
    end
  end
end