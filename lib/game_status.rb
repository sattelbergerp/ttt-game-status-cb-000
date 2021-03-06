# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
	[0, 1, 2],
	[3, 4, 5],
	[6, 7, 8],
	[0, 3, 6],
	[1, 4, 7],
	[2, 5, 8],
	[0, 4, 8],
	[2, 4, 6],
]

def won?(board)
	WIN_COMBINATIONS.find do |combo|
		combo.all?{|index| board[index]=="X"}||combo.all?{|index| board[index]=="O"}
	end
end

def full?(board)
	board.all?{|tile| tile=="X"||tile=="O"}
end

def draw?(board)
	full?(board) && !won?(board)
end

def over?(board)
	full?(board) || won?(board)
end

def winner(board)
	won = won?(board)
	won ? board[won[0]] : nil
end