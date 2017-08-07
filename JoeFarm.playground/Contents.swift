
//Le prix du voyage
let price = 1499.0

//L'argent de joe
var money = 0.0

// @param: numberOfDay: Jour pendant lesquels il doit économiser
var numberOfDay = 0
var barn = ["milk":0, "wheat": 0, "wool": 0]

func calculateBarnSize() -> Int {
    // Calcul de la taille de la grange
    var barnSize = 0
    for (_, count) in barn {
        barnSize += count
    }
    return barnSize
}

func feedCows() {
    money -= 4
}

func sell() {
    // On vends
    money += Double(barn["milk"]!) * 0.50
    money += Double(barn["wheat"]!) * 0.30
    money += Double(barn["wool"]!) * 1
    barn = ["milk":0, "wheat":0, "wool":0]

}

func harvest() {
    //Moissoner
    barn["wheat"]! += 100

}

func mowSheep() {
    // Tondre 
    barn["wool"]! += 30
}

func milkCows() {
    barn["milk"]! += 30
}

while money < price {
    // Joe nourrit les vaches
    feedCows()
    
    if calculateBarnSize() >= 500 {
        sell()
        
    } else {
        // Journée normale
        
        if numberOfDay % 30 == 1 {
            // Joe moissonne
            harvest()
        } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
            // Joe tonds les moutons
            mowSheep()
        } else {
            // Joe trait les vaches
            milkCows()
        }
    }
    // On passe au jour suivant
    numberOfDay += 1
}

let message = "Il te faut \(numberOfDay) jours pour économiser \(money) €"

print(message)


var arrayEmpty = [String]() // Permet de déclare un tableau vide [Type]

var dict = [String: Double]()

