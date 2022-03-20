import Foundation
struct Thing: Identifiable {

    let id: UUID = UUID()
    let name: String
    let age: Int
    let tentacles: Int
    let angry: Bool
}
