struct Town {
    let name : String
    var citizens : [String]
    var resources : [String:Int]
    
    init(name:String , citizens:[String] , resources:[String:Int]){
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func printDemo(){
        print("\(name) มีประชาการคือ \(citizens) และมีทรัพยากรได้แก่ \(resources)")
    }
}

var myTown = Town(name: "Meow", citizens: ["Cat1" , "Cat2"], resources: ["Sand":300])
myTown.citizens.append("Cat3")
print(myTown.citizens)
