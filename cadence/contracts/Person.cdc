 // A simple Person contract 
 // 
 // reference: https://developers.flow.com/cadence/language/contracts
 pub contract Person {
    // declaration of a public variable
    pub var name: String
    // declaration of a private variable, reference: https://developers.flow.com/cadence/language/access-control#access-control 
    access(self) var mood: Mood 

    // Enums type declaration, reference: https://developers.flow.com/cadence/language/enumerations#enum-declaration
    pub enum Mood: UInt8 {
        pub case happy
        pub case angry
        pub case melanholic
    }

    // initialization method for our contracts, this gets run on deployment
    init() {
        self.name = "Alice"
        self.mood = Mood.happy
    }

    pub fun hello(): String {
        log("saying hello") // when we log we can see the log in the emulator output, helpful for debugging
        
        switch self.mood {
            case Mood.happy:
                return "😍 Hello!"
            case Mood.angry:
                return "😤 Go away!"
            case Mood.melanholic:
                return "😐 Hi I guess?"
            default: 
                return "💩 Not sure!"
        }
    }

    pub fun WhoAmI(): String {
        return "I am ".concat(self.name)
    }

    // set a new name
    pub fun setName(name: String) {
        self.name = name
    }
    
    // Friendship resource are types of values that can only exist in one place 
    // 
    // read more about this unique and powerful Cadence feature here https://developers.flow.com/cadence/language/resources
    pub resource Friendship {

    }

 }


