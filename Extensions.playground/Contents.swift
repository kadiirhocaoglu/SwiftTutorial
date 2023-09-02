import UIKit

//Extensions

/* Type - Instance Properties
let red = UIColor.red // Type Properties Veri Tipi üzerinde çalışır
let reds = UIColor().red // Instance Properties Nesne üzerinde çalışır
*/

//MARK: - Computed Property

extension UIColor {
    static var favoriteColor: UIColor {
        return UIColor(red: 0.23, green: 0.12, blue: 0.8, alpha: 1)
    }
}

extension String {
    var pluralized: String {
        return self + "s"
    }
    mutating func pluralizeds() -> String{
        //Code
        return ""
    }
}


var str: String = "kadir"
var strs = str.pluralized
print(strs)

//MARK: - Organize Code

class Restaurant {
    //var name: String
    //var menuItems: String
    //var servers: [String] //[Employee]
    //var cookingStarff: [String] //[Employee]
    
}
//MARK: - Restaurant Methods
extension Restaurant {
    //func add(menuItem: MenuItem)
    //func remove(menuItem: MenuItem)
    //func welcome(guest: Guest)
}

struct Employee {
    var firtName: String
    var lastName: String
    var jobTitle: String
    var phonNumber: String
}
//MARK: - Protocol typealias
typealias configureEquatableCodableProtocol = Equatable & Codable

//MARK: - Employee Protocols

extension Employee: configureEquatableCodableProtocol{

    static func ==(lhs: Employee, rhs: Employee) -> Bool{
        return lhs.firtName == rhs.firtName && lhs.lastName == rhs.lastName
    }
}



