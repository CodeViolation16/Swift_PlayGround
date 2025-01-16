import Foundation

print("Hello, World!")

let array: [String] = ["Rock", "Paper", "Scisscor"]

func randomize() -> String {
	 let number = Int.random(in: 0..<array.count)
	 let computerChoice = array[number]
	 return computerChoice
}


func result(player: String, computer: String) -> String {
	 if player == computer {
			return "The game is tie"
	 }
	 switch (player) {
			case "Rock":
				 return computer == "Scissor" ? "You Won!!" : "You Lost!!"
			case "Paper":
				 return computer == "Rock" ? "You Won!!" : "You Lost!!"
			case "Scissor":
				 return computer == "Paper" ? "You Won!!" : "You Lost!!"
			default:
				 return "Invalid Choice"
	 }
}

while true {

	 print("\n=== Rock, Paper, Scissors ===")
	 print("1. Rock")
	 print("2. Paper")
	 print("3. Scissors")
	 print("4. Exit")
	 print("=============================")

	 if let answer = readLine() {
			let computerChoice = randomize()
			print("You chose: \(answer)")
			print("The computer chose: \(computerChoice)")
			print(result(player: answer, computer: computerChoice))
	 }
}
