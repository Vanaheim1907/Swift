// while
var myBorn = 1991
var year = 1989

while year < myBorn{
    print("Je ne suis pas né ! ")
    year += 1
}
print("Voilà, je suis arrivé ! en \(year)")

var notesDeLaClasse = [18, 4, 14, 15, 17, 15, 9, 20, 19, 11, 12, 14]

// Ajout de la note
notesDeLaClasse.append(13)

var somme = 0
var moyenne = 0

for note in notesDeLaClasse {
    somme += note
}

moyenne = somme / notesDeLaClasse.count

print("La moyenne est de \(moyenne)")

/*
 
 Je vous propose le petit exercice suivant. En utilisant un dictionnaire, rédigez un programme qui permet d'afficher les tailles des membres de votre famille et qui donne à la fin la taille cumulée de tout le monde
 
 */

var familySize = ["Dady": 1.75, "Mam": 1.63, "Amandine": 1.53, "Alexandre": 1.89]

var totalSize = 0.0

for (name, size) in familySize {
    print (" \(name) mesure \(size) mètre! ")
    
    totalSize += size
}

print("Ensemble nous mesurons \(totalSize) mètres")


