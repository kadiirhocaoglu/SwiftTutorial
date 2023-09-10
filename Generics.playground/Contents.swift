import UIKit

class Person: Equatable{
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name
    }
    
    var name = String()
    init(name: String){
        self.name = name
    }

    
}

func printMe<T>(value: T ){
    print(value)
}

let personKadir = Person(name: "Kadir")
let personAli = Person(name: "Ali")
printMe(value: "Kadir")
printMe(value: personKadir.name)
printMe(value: 32)

func isEqual <T: Equatable> (lhs: T, rhs: T) -> Bool {
    return lhs == rhs
}
isEqual(lhs: "kadir", rhs: "ali")
printMe(value: isEqual(lhs: personAli, rhs: personKadir))

//MARK: - Reusable
 
protocol Storable{
    var storedData: String {get}
}

struct Customer: Storable{ // Memberwise int
    let name: String
    let surname: String
   
    var storedData: String {
        return "\(name) \(surname)"
    }
}
struct Animal: Storable{ // Memberwise int
    let name: String
    let type: String
    
    var storedData: String {
        return "\(name) \(type)"
    }
}
class Storage<T: Storable>{
    var lastItem: T!
    func store(item: T){
        let data = item.storedData
        //data.write...
        lastItem = item
    }
}


let customerStorage = Storage<Customer>()
customerStorage.store(item: Customer(name: "Kadir", surname: "Hocaoğlu"))
customerStorage.lastItem.name

let animalStorage = Storage<Animal>()
animalStorage.store(item: Animal(name: "Remzi", type: "Cat"))
animalStorage.lastItem.name


//MARK: - Extensions - Type Constraint

extension Array where Element == Int {
    func sum() -> Int {
        var value = 0
        for i in 0..<count{
            value += self[i]
        }
        return value
    }
}

var intArr = [1,2,3,4]
intArr.sum()

var strArr  = ["1", "2", "3"] //sum() don't work
//MARK: - HighOrder func
let list = [1,2,3,4]

func customMap<T, U>(array: [T], transform: (T) -> U) -> [U] {
    var result: [U] = []
    for item in array{
        result.append(transform(item))
    }
    return result
}
let listmap = customMap(array: list) { item in
    return list.count
}
print(listmap)

extension Array {
    func reverse(array: [Element]) -> [Element] {
        var reversedArray: [Element] = []
        for item in self.reversed(){
            reversedArray.append(item)
        }
        return reversedArray
    }
}

func uniqueValues<T: Hashable>(array:[T])->[T]{
    var result: [T] = []
    for item in array{
        if result.contains(item){
            continue
        }
        result.append(item)
    }
    return(result)
}

//MARK: - Type

class Calculator<T: Numeric> {
    func add (a: T, b: T) -> T {
        return a+b
    }
    func multiply(a: T, b: T) -> T{
        return a*b
    }
}

let calculator = Calculator<Int>()
calculator.add(a: 2, b: 3)

let calculatorDouble = Calculator<Double>()
calculatorDouble.multiply(a: 12.3, b: 23.2)

//MARK: -Tuple

class Pair<T, U>{
    private(set) var first: T
    private(set) var second: U
    init(first: T, second: U){
        self.first = first
        self.second = second
    }
}
let pair = Pair(first: "Kadir'in Yaşı", second: 21)

