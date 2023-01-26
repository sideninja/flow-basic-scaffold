// A simple Person contract 
 // 
 // reference: https://developers.flow.com/cadence/language/contracts
 pub contract Person {
    // declaration of a public variable
    pub var name: String
    // declaration of a private variable, reference: https://developers.flow.com/cadence/language/access-control#access-control 
    access(self) var happy: Bool 

    // initialization method for our contracts, this gets run on deployment
    init() {
        self.name = "Alice"
        self.happy = true
    }

    pub fun hello(): String {
        log("saying hello") // when we log we can see the log in the emulator output, helpful for debugging
        
        return self.happy == true ? "😍 Hello!" : "😤 Go away!"
    }

    pub fun WhoAmI(): String {
        return "I am ".concat(self.name)
    }

    pub fun changeMyMood() {
        self.happy = !self.happy
    }
    
    // create a new friendship resource 
    pub fun makeFriends(): @Friendship {
        return <-create Friendship()
    }

    // Friendship resource are types of values that can only exist in one place 
    // 
    // read more about this unique and powerful Cadence feature here https://developers.flow.com/cadence/language/resources
    pub resource Friendship {
        pub var strength: UInt64
        
        init() {
            self.strength = unsafeRandom()
        }
    }
}


 
