import UIKit

class SuperClass
{
    var className: String
    var despcription: String{
        return "I am parent class"
    }
    
    init(className: String)
    {
        self.className = className
    }
    func getClassName()
    {
        print("Bu class bir SuperClass'tır: \(className)")
    }
    
}

class SubClass: SuperClass
{
    override var despcription: String
    {
        return super.despcription + "'s child class"
    }
    override func getClassName() {
        print("Bu class bir SubClass'tır: \(className)")
    }
}

//Override methods and properties
class SubSubClass: SubClass
{
    override var despcription: String
    {
        return super.despcription+"'s child class"
    }
    override func getClassName() {
        print("Bu class bir SubSubClass'tır: \(className)")
    }
}
var kadir = SubSubClass(className: "Kadir")
kadir.getClassName()
print(kadir.despcription)

//Override: Initializer

class Parent
{
    var className: String
    
    init(className: String)
    {
        self.className = className
    }
}

class Child: Parent
{
    var properties: String
    init(properties:String, className: String)
    {
        self.properties = properties
        super.init(className: "Child Class:" + className)
    }
}

var pClass = Parent(className: "PClass")
var cClass = Child(properties: "Can Speak", className: "CClass")

print(pClass.className)
print(cClass.className)
