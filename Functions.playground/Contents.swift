import UIKit

func printer(firstName: String, lastName: String, age: Int)
{
    print("First Name: " + firstName + " Last Name: " + lastName + " Age: " + String(age))
}
printer(firstName: "Kadir", lastName: "Hocaoglu", age: 22)

//Argument labels
func sayHello(to firstName: String) //to olsa kullanılılabirliği artar
{
    print("Hello " + firstName)
}
sayHello(to: "Mert")

func sayHelloV2(to firstPerson: String, and secondPerson: String)
{
print("Hello " + firstPerson + " and " + secondPerson)
}

sayHelloV2(to: "Mert" , and: "Tuna")

//noArgumentLabel -> print

func sayHelloV3(_ firstName: String)
{
    print("Hello " + firstName)
}
sayHelloV3("Kadir")

//default parameter's value
func display(teamName: String, score: Int = 0)
{
    let text = teamName + ": " + String(score)
    print(text)
}

// func with parameters and return

func multiply(firstNb: Int, secondNb: Int) -> Int
{
    return firstNb*secondNb
}
print(multiply(firstNb: 13, secondNb: 5))

