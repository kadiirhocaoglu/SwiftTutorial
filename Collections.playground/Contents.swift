import UIKit
/*
//Array (Same kind of)
var array: [String] = ["Array1", "Array2"]
var array2 = [21,32,43,54,65,76]
//is there in array
var boolean = array.contains("Array1") //true

var nadirArray: Array<Int> = [12,23,43,454,54]
var Age = Int()  //otoInit
var Ages = [Int]()  //preference use

// Repeating init
var repeating = [Int](repeating: 23, count: 12)

//How many elements are in array
var count = array.count

//is Empty

var arrBool = Ages.isEmpty // True

//append to arr
array.append("Merhaba")
print(array)
array += ["Hi"]
print(array)

//append to index

array.insert("index0", at: 0)

//remove to index return removed elements

array.remove(at: 3)

print(array)

// last elements remove

array.removeLast()

// remove all

array.removeAll()


//Dictionary [key : value, key1 : value1, key2 : value2]
//If you assign a value to a key that does not exist, it adds new
//dictionary is not order
var dictionary = ["kadir" : 1, "emin" : 2]
dictionary["Emin"] = 3
print(dictionary)
//update and give old value
let oldValue = dictionary.updateValue(3, forKey: "kadir")

//enumarated() -> [(index: value)]

for (index, eleman) in array2.enumerated()
{
    print(index,  String(eleman))
}

//while
/*
 while parameter > 0
 {
 func()
    if againNo == 20
    {
        break
    }
 }
 */
 */

//MARK: - Set
 
var AllPlanet: Set<String> = ["Merkür", "Venüs", "Dünya", "Mars", "Jüpiter", "Satürn", "Uranüs", "Neptün"]
var LikeEarthPlanet: Set<String> = ["Merkür", "Venüs", "Mars"]

AllPlanet.isSubset(of: LikeEarthPlanet)
AllPlanet.isSuperset(of: LikeEarthPlanet)
LikeEarthPlanet.isSubset(of: AllPlanet)
LikeEarthPlanet.isSuperset(of: AllPlanet)

AllPlanet.intersection(LikeEarthPlanet)
LikeEarthPlanet.intersection(AllPlanet)
AllPlanet.union(LikeEarthPlanet)
LikeEarthPlanet.union(AllPlanet)

AllPlanet.subtracting(LikeEarthPlanet)
print(AllPlanet)
print(LikeEarthPlanet)
//AllPlanet.subtract(LikeEarthPlanet )
LikeEarthPlanet.subtract(AllPlanet)
print(AllPlanet)
print(LikeEarthPlanet)
