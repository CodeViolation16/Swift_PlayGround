import Foundation

// one data structure
// class with functions
// switch case for optioning
//print("\nIncome Expense Tracker")
//print("1. Add Income")
//print("2. Add Expense")
//print("3. View Transactions")
//print("4. View Balance")
//print("5. Exit")



struct transaction {
	 let type: String
	 let amount: Double
	 let description: String
}

class expenseTrackerApp {
	 var expenseData:[transaction] = []

	 func addTransaction(type: String, amount: Double, description: String) {
			let transaction = transaction(type: type, amount: amount, description: description)
			print(transaction)
			expenseData.append(transaction)
	 }

	 func displayData() {
			print("Here are the transactions:")
			for item in expenseData {
				 print("\(item.type): \(item.description) - \(item.amount)")
			}
	 }
	 func balancing() {
//			let income = expenseData.filter{ $0.type === "Income"}.reduce(0) { $0 + $1.amount}
			let expenses = expenseData.filter { $0.type == "Expense" }.reduce(0) { $0 + $1.amount }
			let income = expenseData.filter { $0.type == "Income"}.reduce(0) { $0 + $1.amount }
			let balance = income - expenses
			print(balance)
	 }
}

let app = expenseTrackerApp()

while true {

			print("\nIncome Expense Tracker")
			print("1. Add Income")
			print("2. Add Expense")
			print("3. View Transactions")
			print("4. Exit")

	 if let choice = readLine() {
			switch choice {
				 case "1":
							 // Add income
						print("Enter income amount: ", terminator: "")
						if let amountString = readLine(), let amount = Double(amountString) {
							 print("Enter income description: ", terminator: "")
							 if let description = readLine() {
									app.addTransaction(type: "Income", amount: amount, description: description)
									print("Income added!")
							 }
						}
				 case "2":
						print("Enter expense amount:", terminator: "")
						if let expenseString = readLine(), let expenseDouble = Double(expenseString) {
							 print("Enter income description:", terminator: "")
							 if let expenseDes = readLine() {
									app.addTransaction(type: "Expense", amount: expenseDouble, description: expenseDes)
									print("Added Income Successfully")
							 }
						}
				 case "3":
						app.displayData()
				 case "4":
						exit(0)



				 default:
						print("Exit Program")
			}
	 }
}


