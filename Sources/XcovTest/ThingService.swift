protocol ThingService {

    func all() -> [Thing]
    func add(thing: Thing)
    func delete(id: Thing.ID)
}
