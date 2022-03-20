class StandardThingService: ThingService {

    private var things: [Thing] = []

    func all() -> [Thing] {
        return things
    }

    func add(thing: Thing) {
        things.append(thing)
    }

    func delete(id: Thing.ID) {
        things.removeAll(where: {$0.id == id})
    }
}
