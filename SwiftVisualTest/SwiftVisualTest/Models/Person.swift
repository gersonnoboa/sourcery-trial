import Foundation

struct Person: AutoEquatable {
    var firstName: String
    var lastName: String
    var birthDate: Date
    var age: Int {
        return Calendar.current.dateComponents([.year], from: birthDate, to: Date()).year ?? -1
    }
}
