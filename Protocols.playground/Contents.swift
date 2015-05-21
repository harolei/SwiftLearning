import Foundation

@objc protocol Speaker {
    func Speak()
    optional func TellJoke()
}

class Vicki: Speaker {
    @objc func Speak() {
        println("Hello, I am Vicki!")
    }
    func TellJoke() {
        println("Q: What did Sushi A say to Sushi B?")
    }
}

class Ray: Speaker {
    @objc func Speak() {
        println("Yo, I am Ray!")
    }
    
    func TellJoke() {
        println("Q: Whats the object-oriented way to become wealthy?")
    }
    
    func WriteTutorial() {
        println("I'm on it!")
    }
}

class Animal {
    
}

class Dog: Animal, Speaker {
    @objc func Speak() {
        println("Woof!")
    }
}

var speaker:Speaker
speaker = Ray()
speaker.Speak()
(speaker as! Ray).WriteTutorial()
speaker.TellJoke?()
speaker = Dog()
speaker.TellJoke?()

