import UIKit
/*
//what is there in struct: Property, Initializers, Method, Enum and options

struct Employee
{
    let employeeName: String
    var experience: Int
    let startYear: Int
    func sayHi()
    {
        print("Hi!")
    }
}
enum Size
{
    case xsmall
    case small
    case medium
    case large
    case xlarge
}
enum Color
{
    case blue(blueWhite)
    case yellow
    case red
    case green
    enum blueWhite
    {
        case whiteBlue
    }
}
struct Tshirt
{
    let color: Color
    let size: Size
}
let kadir = Employee(employeeName: "Abdulkadir", experience: 3, startYear: 2020)
print(kadir.employeeName + String(kadir.startYear) + String(kadir.experience))
kadir.sayHi()
let tshirtOfKadir = Tshirt(color: Color.blue(.whiteBlue)  , size: .large)
print(tshirtOfKadir.color)
*/


/*

var str = String.init() //---------------------------->
//veya
var str1 = String()    //---------------------------->


var number = Int.init()
//-Shortcut
var str2 = String()
//Initializers | Default Value

struct Odometer
{
    var count = Int()
    mutating func gearUp()
    {
        self.count += 1
    }
    mutating func slowup() //mutating func mutasyona uğratıcı yani değiştirebilir fonksiyon anlamına gelir
    {
        self.count -= 1
    }
}
var odometer1 = Odometer()
print(odometer1.count)
odometer1.gearUp()
print(odometer1.count)

//Memberwise Initializers let person1 = Person(personName: "Kadir")

//Custom Initializers
struct Temperature
{
    var celcius: Double
    
    init (celcius: Double)
    {
        self.celcius = celcius
    }
    init (fahrenheit: Double)
    {
        self.celcius = (fahrenheit - 32) / 1.8
    }
    init (kelvin: Double)
    {
        self.celcius = kelvin - 273.15
    }
}

let todayTemp = Temperature(fahrenheit: 94)

print(todayTemp.celcius)

struct Size
{
    let height: Double
    let width: Double
}

var myHomeSize = Size(height: <#T##Double#>, width: <#T##Double#>) //Memberwise İnit


print(myHomeSizes.areaCalc())

//Computed Properties

struct TemperatureV2
{
    var celcius: Double

    var fahrenheit: Double
    {
       return (celcius * 1.8) + 32
    }
    var kelvin: Double
    {
        return celcius + 273.15
    }
}

var tomorrowTemp = TemperatureV2(celcius: 24.5)
print(tomorrowTemp.kelvin)

struct TemperatureV3 {
    var celcius: Double
    
    init(celcius: Double) {
        self.celcius = celcius
    }
    
    init(fahrenheit: Double) {
        self.celcius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        self.celcius = kelvin - 273.15
    }
    
    var fahrenheit: Double {
        return (celcius * 1.8) + 32
    }
    
    var kelvin: Double {
        return celcius + 273.15
    }
}

//static properties

struct Numb
{
    static let pi: Double = 3.14
}
Numb.pi

*/

struct Temperature {
    var celsius: Double //Temperature Structı için sadece celsius
                        //özelliği barındırıyor
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double) {
        self.celsius = (fahrenheit - 32.0) * 5.0/9.0
    }
    
    init(kelvin: Double) {
        self.celsius = kelvin - 273.15
    }
}

var temp0 = Temperature(celsius: <#T##Double#>)
var temp1 = Temperature(kelvin: <#T##Double#>)
var temp2 = Temperature(fahrenheit: <#T##Double#>)
