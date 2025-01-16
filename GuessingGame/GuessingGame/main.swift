//
//  main.swift
//  GuessingGame
//
//  Created by Khanh Nguyen on 1/16/25.
//
import Foundation

print("Hello, World!")

let num = Int.random(in: 0...6)
var times = 4

while times > 0 {

	 print("I've picked a number between 1-10. Can you guess it?")

	 if let answer = readLine(), let numAns = Int(answer) {
			if numAns == num {
				 print("Congrats, you won the game")
				 break
			}
			else {
				 times -= 1
				 print("Guess Again, you have \(times) guesses left")
				 if numAns < num {
						print("Too low! Guess again. You have \(times) guesses left.")
				 }
				 else {
						print("Too high! Guess again. You have \(times) guesses left. The answer is \(num)")
						if times == 0 {
							 print("Game Over")
						}
				 }

			}

	 }
	 else {
			print("Please print a valid number")
	 }

}
