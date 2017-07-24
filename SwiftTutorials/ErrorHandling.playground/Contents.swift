//: Playground - noun: a place where people can play

import UIKit

enum VendingMachineError: Error {

case invalidSelection
    case outOfStock
    case insufficientFunds(coinsNeeded : Int)
}



struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    
    var inventory = [
        "Chocopie": Item(price: 12,count: 7),
        "Kinder Joy": Item(price:10,count:5),
        "Alcapachino":Item(price:30,count:9)
    ]
    var coinDeposited = 0
    
    func vend(itemNamed name: String) throws  {
        guard let item = inventory[name]
            else { throw
            VendingMachineError.invalidSelection
        }
        guard item.count > 0  else {
            throw
            VendingMachineError.outOfStock
        }
        
        guard item.price <= coinDeposited else {
            throw
            VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinDeposited)
        }
        
        coinDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        print("Dispensing \(item)")
        
    }
}


let favorateSnack = [
 "Noman Lola Khan": "Chocopie",
 "Ariz Bokrad" : "Kinder Joy",
 "Zahid Duplicate Shaikh": "Alcapachino",
]
func buyFavorateSnack(person: String,vendingMachine: VendingMachine)
    throws {
        let snackName = favorateSnack[person] ?? "KinderJoy"
 try vendingMachine.vend(itemNamed: snackName)
}


struct PurchasedSnack {
    let name: String
    init(name: String, vendindMachine: VendingMachine) throws {
        try vendindMachine.vend(itemNamed: name)
        self.name = name
    }
    
}

var vendingMachine  = VendingMachine()
 vendingMachine.coinDeposited = 16
do {
    try buyFavorateSnack(person: "Ariz Bokrad", vendingMachine: vendingMachine)
    try  buyFavorateSnack(person: "Zahid Duplicate Shaikh", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection")
} catch VendingMachineError.outOfStock {
  print("Out of Stock")
} catch
    VendingMachineError.insufficientFunds( let coinNeeded) {
        print("Insufficient funds.Please insert additional \(coinNeeded) coins")
}
		
