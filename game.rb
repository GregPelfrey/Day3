# Draw a board
# Asks for user to pick a location
# Draws an X in that location
# Asks next user to pick a location
# Draws an O in that location
# Repeat until 3 in a row/diagonal

puts "What is your name?"
name = gets.chomp

puts "Lets play Tic Tac Toe."

board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]


def draw_board board, name	
	puts name
	puts "#{draw_space(board[0][0])}|#{draw_space(board[0][1])}|#{draw_space(board[0][2])}"
	puts '-----'
	puts "#{draw_space(board[1][0])}|#{draw_space(board[1][1])}|#{draw_space(board[1][2])}"
	puts '-----'
	puts "#{draw_space(board[2][0])}|#{draw_space(board[2][1])}|#{draw_space(board[2][2])}"

end

def draw_space board_space
	if board_space == 0
		' '
	elsif board_space == 1
		'X'
	elsif board_space == 2
		'O'
	end
end

counter = 0

def pick_location board, player
	puts "Pick a location (1-9):"
	location = gets.chomp.to_i                  #'gets' : Interrupt
	if location == 1 && board[0][0] == 0
		board[0][0] = player
	elsif location == 2 && board[0][1] == 0
		board[0][1] = player
	elsif location == 3 && board[0][2] == 0
		board[0][2] = player
	elsif location == 4 && board[1][0] == 0
		board[1][0] = player
	elsif location == 5 && board[1][1] == 0
		board[1][1] = player
	elsif location == 6 && board[1][2] == 0
		board[1][2] = player
	elsif location == 7 && board[2][0] == 0
		board[2][0] = player
	elsif location == 8 && board[2][1] == 0
		board[2][1] = player
	elsif location == 9 && board[2][2] == 0
		board[2][2] = player
	else
	puts "Location taken choose again"	
	pick_location(board, player)                    #'pick_location'
	end
	if [1,2].include?(board[0][0]) &&     
	[1,2].include?(board[0][1]) &&        
	[1,2].include?(board[0][2]) &&        
	[1,2].include?(board[1][0]) &&
	[1,2].include?(board[1][1]) &&
	[1,2].include?(board[1][2]) &&
	[1,2].include?(board[2][0]) &&
	[1,2].include?(board[2][1]) &&
	[1,2].include?(board[2][2])
	puts "Nil Game"
	end
end


while true 
	player = 1
	draw_board(board, name)
	pick_location(board, player)
	player = 2
	draw_board(board, name)
	pick_location(board, player)
end


