require "pry"

def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index) >= 0 && valid_move?(board, index) <= 8)
      return true
    else
      until valid_move?(board, index) >= 0 && valid_move?(board, index) <= 8
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
      end
  end
end


def input_to_index(input)
  input = input.to_i
  input - 1
end



def valid_move?(board, index)
  if(position_taken?(board, index) == false && index >=0 && index <=8)
    return true
  elsif position_taken?(board, index) == true
    return false
  else
    return nil
  end
end

def move(board, index, position = "X")
  board[index] = position
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end
