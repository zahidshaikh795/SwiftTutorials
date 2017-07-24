//: Playground - noun: a place where people can play

import UIKit

class MediaItem {
    
    var name: String
    init(name:String) {
        self.name = name
    }
}

class Movie: MediaItem {
    
    var director: String
    init(name: String,director: String) {
        self.director = director
        super.init(name: name)
    }
    
}

class Song: MediaItem {
    
    var artist: String
    init(name:String, artist:String) {
        self.artist = artist
        super.init(name: name)
    }
    
}

let library = [

    Movie(name: "Dunkirk", director: "Colin"),
    Song(name: "Mere Rashke Kamar", artist: "Bhai Rahat"),
    Movie(name: "From Richest To Rich", director: "Zahid Shaikh"),
    Movie(name: "Gangs Of Wassepur", director: "Anurag Kashyap"),
    Song(name: "Bon Appetet", artist: "Kety Perry")
]

var movieCount = 0
var songCount = 0
for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song{
        songCount += 1
    }
}
 print("Media library contain \(movieCount) movies and \(songCount) songs")

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name),dir \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), Artist: \(song.artist)")
    }
}
var things = [Any]()

 let optionalNumber: Int? = 2
things.append(optionalNumber as Any) // without warning
// things.append(optionalNumber) // with warning

struct BlackjackCard {
    
    enum Suit: Character {
        case spades = "♠︎" , hearts = "♥︎", diamonds = "♦︎", cubs = "♣︎"
    }
    
    enum Rank:Int {
        case two = 2,three,four,five,six,seven,eight,nine,ten
        case jack,king,queen,ace
        
        struct Values {
            let first: Int,second: Int?
        }
        
        var values: Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack,.king,.queen:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    let rank: Rank , suit: Suit
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += "value is \(rank.values.first)"
        if let second = rank.values.second {
        output += " or \(second)"
        }
        return output
    }
    
    
}

let theAceOfSpades = BlackjackCard(rank: .ace, suit: .spades)
print("theAceOfSpades: \(theAceOfSpades.description)")
let heartSybol = BlackjackCard.Suit.hearts.rawValue





		