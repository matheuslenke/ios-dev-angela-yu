
class Dragon: Enemy {
    static var wingSpan = 2

    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly!")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage")
    }
    
}
