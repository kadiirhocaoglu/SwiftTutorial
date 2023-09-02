import UIKit

//Closure
let sumClouser = { (number: [Int]) -> Int in
    var result: Int = 0
    for num in number{
        result += num
    }
    return result
}

let sumNum = sumClouser([1,2,3,4,5,7,6,54524,43,544345,23423,452])

let numArr = [1,2,3,4,5,7,6,54524,43,544345,23423,452]
let sortedNumArr = numArr.sorted { return $0 < $1}
print(sortedNumArr)

let strClosure = {( str0: String, str1: String) -> Bool in
    return str0 > str1
}

var stArr = ["merhaba" , "selaam" , "selaam", "merhhaba", "hello"]

var stArr1 = ["meaba" , "selm" , "sel", "merhhaba", "hello"]

stArr = stArr.sorted(by: strClosure)

stArr1 =  stArr1.sorted(by: { return $0 < $1 })
print(stArr)
print(stArr1)

// Tanımlı Closure'lar
//data transformation

// MARK:  Map
//Bir arraydeki elemanların ne şekilde değiştiğini belirtir.
let namesE = ["Mehmet", "Ali", "Hakan", "Emin", "Arda"]
let namesK = ["Ayşe", "Emine", "Hatice", "Fatma"]

let fullNamesE = namesE.map { (name) in
    return name + " " + "Bey"
}
let fullNamesK = namesK.map { $0 + " Hanım" }
print(fullNamesE)
print(fullNamesK)
// MARK:  Filter
//Bir parametreye göre yeni array oluşturur

let numbers = [10,2,12,32,4,3,4,5,7654,354,2,3]

let over20Number = numbers.filter { (number) -> Bool in // {$0 > 20}
    return number > 20
}
print(over20Number.sorted(by: { $0 < $1 }))

// MARK:  Reduce
//Arrayin içindeki tüm elemanları kullanarak tek bir eleman oluşturur

let sumNumbers = numbers.reduce(0) { (partialResult, number) -> Int in
    return partialResult + number
        
}

print(sumNumbers)
