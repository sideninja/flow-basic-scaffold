
pub contract DogShelter {
    init() {}

    pub resource Dog {
        pub var name: String

        init(name: String) {
            self.name = name
        }
    }

    pub fun addoptDog(name: String): @Dog {
        return <- create Dog(name: name)
    }
}
