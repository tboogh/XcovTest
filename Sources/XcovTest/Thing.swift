import Foundation

struct Thing: Identifiable, Equatable {

    let id: UUID = UUID()
    let name: String
    let age: Int
    let tentacles: Int
    let angry: Bool
}

