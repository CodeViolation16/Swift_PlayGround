import Foundation

var player1: Bool = true

var board: [[Any]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]


while true {

	 for i in 0..<3 {
			print(board[i])
	 }


	 if let stringNum = readLine(), let num = Int(stringNum) {
			print("Choose a number to play:")
			var found = false
			for row in 0..<board.count {
				 for col in 0..<board[row].count {

						if board[row][col] as? Int == num {
							 board[row][col] = player1 ? "O" : "X"
							 player1.toggle()
							 found = true
							 break
							 
						}
				 }
				 if found { break }
			}
	 } else {
			print("Invalid input. Please enter a number.")
	 }


}
