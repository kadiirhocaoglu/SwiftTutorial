import UIKit

class Movie {
    var movieName: String
    
    init(filmAdi movieName: String){
        self.movieName = movieName
    }
}
class ActionMovie: Movie{
    override var movieName: String {
        didSet {
            print("working movieNameDidSet")
        }
    }
    let movieAction: String
    
    init(movieName: String, movieAction: String) {
        self.movieAction = movieAction
        super.init(filmAdi: movieName)
    }
}
let fastAndFuries: ActionMovie = ActionMovie(movieName: "Fast and Furies", movieAction: "100")
fastAndFuries.movieName = "Hi"

print(fastAndFuries.movieName)
