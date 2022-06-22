struct Town {
    let name : String
    var citizens : [String]
    var resources : [String:Int]
    
    init(name:String , citizens:[String] , resources:[String:Int]){
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
//    return ค่าเป็น String หรือเป็น Type อะไรก็ใส่เป็น -> อะไรทำนองนั้นเลยนา
    func joinTheArray()->String{
//        ฟังก์ชัน join array เหมือนใน JS แต่ใน Swift จะใช้เป็น .joined(separator:....) อะไรแบบนี้
        return citizens.joined(separator: ",")
    }
    
    func printDemo(){
        print("\(name) มีประชาการคือ \(joinTheArray()) และมีทรัพยากรได้แก่ \(resources)")
    }
}

var myTown = Town(name: "Meow", citizens: ["Cat1" , "Cat2"], resources: ["Sand":300])
myTown.citizens.append("Cat3")
print(myTown.citizens)

myTown.printDemo()
