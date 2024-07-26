import UIKit

class Car {
    var color:String?
    var speed:Int?
    var itworks:Bool?
    
    init(){
        print("blank init running")
    }
    
    init(color:String,speed:Int,itworks:Bool){
        self.color = color //self bulunduğu sınıfı temsil ediyor
        self.speed = speed
        self.itworks = itworks //Shadowing : gölgeleme
        print("full init running")
    }
    
    
    
    func run(){ //side effect
        itworks = true
        speed = 5
    }
    func stop(){
        itworks = false
        speed = 0
    }
    
    func speedup(km:Int){
        speed! += km
    }
    func slowdown(km:Int){
        speed! -= km
    }
    
    func getInfo(){
        print("--------------------")
        print("Color of Car   : \(color!)") // ! = unwrap (save from optional)
        print("Speed of Car   : \(speed!)")
        print("Does it works? : \(itworks!)")
    }
}

//create object
var bmw = Car(color: "red", speed: 100, itworks: true)


/*assign value
bmw.color = "red"
bmw.speed = 250
bmw.itworks = true */

//read value
bmw.getInfo()
bmw.stop()
bmw.getInfo()
bmw.run()
bmw.getInfo()
bmw.speedup(km: 50)
bmw.getInfo()
bmw.slowdown(km: 20)

//new object
var sahin = Car()
sahin.color = "white"
sahin.speed = 100
sahin.itworks = false
bmw.getInfo()
bmw.stop()
bmw.getInfo()
bmw.run()
bmw.getInfo()

