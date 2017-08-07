//Parameters

//Flag to know if whe have to quit
var flag = true

//L'argent de joe
var money = 0.0

// La grange et son stock
var barn = ["milk":0, "wheat": 0, "wool": 0]

//======================
// MARK: - Activities
//======================
func feedAnimals() {
    money -= 4
}

func sell() {
    // On vends
    money += Double(barn["milk"]!) * 0.50
    money += Double(barn["wheat"]!) * 0.30
    money += Double(barn["wool"]!) * 1
    barn = ["milk":0, "wheat":0, "wool":0]
    
}

func harvest(retrieving quantity: Int) {
    //Moissoner
    barn["wheat"]! += quantity
    
}

func mowSheep(retrieving quantity: Int) {
    // Tondre
    barn["wool"]! += quantity
}

func milkCows(retrieving quantity: Int) {
    barn["milk"]! += quantity
}
//====================
// MARK: - Conversation
//====================
func readQuantity(of type: String) -> Int? {
    // On demande la quantité désirée
    print("Combient de \(type) avez vous récupéré")
    
    // On convertit la quantité et renvoie la réponse
    if let line = readLine() {
        if quantity = Int(line) {
            return quantity
        }
    }
    
    // Si la valeur n'a pas pu être interprété, on le signale
    print("Je n'ai pas compris")
    return nil
}

func addNewActivity() {
    
    print("Qu’avez-vous fait aujourd'hui?"
        + "\n1. 🥕  J’ai nourri mes animaux"
        + "\n2. 💰  J’ai vendu mes produits"
        + "\n3. 🐄  J’ai trait mes vaches"
        + "\n4. 🌾  J’ai moissonné"
        + "\n5. 🐑  J’ai tondu mes moutons")
    
    if let choice = readLine() {
        
        switch choice {
        case "1": // Nourir les animaux
            feedAnimals()
        case "2": // Vendre les produits
            sell()
        case "3": // Traire les vaches
            
            if let quantity = readQuantity(of: "🍼") {
                milkCows(retrieving: quantity)
            }
        case "4": // Moisonner
            
            if let quantity = readQuantity(of: "🌾") {
                harvest(retrieving: quantity)
            }
            
        case "5": // Tondre les moutons
            if let quantity = readQuantity(of: "⚪️") {
                mowSheep(retrieving: quantity)
            }
        default:
            print("Je ne comprends pas")
        }
        
        print("🎉  Super 🎉")

    }
}

func presentMenu() {
    print("Que voulez vous faire ?"
        + "\n1. 🤸  Enregistrer une nouvelle activité"
        + "\n2. 🏦  Consulter ma banque"
        + "\n3. 🏠  Consulter ma grange"
        + "\n4. Quitter")
    
    
    if let choice = readLine() {
        switch choice {
            
        case "1":
            print("Vous voulez enregister une nouvelle activité")
            addNewActivity()
        
        case "2":
            print("Votre banque contient \(money) € !")
            
        case "3":
            print("Votre grange contient :"
                + "\n🍼  \(barn["milk"]!) bidons de lait"
                + "\n🌾  \(barn["wheat"]!) bottes de blé"
                + "\n⚪️  \(barn["wool"]!) pelottes de laine")
            
        case "4":
            flag = false
            
        default:
            print("Je ne comprends pas :( ")
            
        }
    }
}

while flag {
    presentMenu()
}

