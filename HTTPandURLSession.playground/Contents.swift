import UIKit
import Foundation
// https://appstore.apple.com
enum enumURL: String{
    case HTTP = "https://"
    case Subdomain = ""
    case Domain = "bilgisayarkavramlari"
    case TopLevelDomain = ".com"
}
let url: URL = {
    return URL(string:"\(enumURL.HTTP.rawValue)\(enumURL.Subdomain.rawValue)\(enumURL.Domain.rawValue)\(enumURL.TopLevelDomain.rawValue)")!
}()

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data {
        if let responseString = String(data: data, encoding: .utf8){
            print(responseString)
        }
    }
}
task.resume()
