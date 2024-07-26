import UIKit

class Home{
    var numberOfWindows:Int?
    
    init(numberOfWindows: Int) {
        self.numberOfWindows = numberOfWindows
    }
}

class Castle : Home {
    var numberOfTowers:Int?
    
    init(numberOfTowers: Int, numberOfWindows:Int) {
        self.numberOfTowers = numberOfTowers
        super.init(numberOfWindows: numberOfWindows)
    }
}

class Villa:Home{
    var isTheregarage:Bool?

    init(isTheregarage: Bool, numberOfWindows: Int){
        self.isTheregarage = isTheregarage
        super.init(numberOfWindows: numberOfWindows)
    }
}


let topkapi = Castle ( numberOfTowers: 5, numberOfWindows: 300)
let bogazvilla = Villa(isTheregarage: true, numberOfWindows: 20)

print(bogazvilla.isTheregarage!)
print(bogazvilla.numberOfWindows!)

print(topkapi.numberOfTowers!)
print(topkapi.numberOfWindows!)



//OVERRIDE
class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
}
class Memeli : Hayvan {
    
}
class Kedi : Memeli {
    override func sesCikar() {
        print("Miyav Miyav")
    }
}
class Kopek : Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar()//Kalıtım yok , kendi fonksiyonunu çalıştırdı.
memeli.sesCikar()//Kalıtım var , üst sınıfın fonksiyonunu çalıştırdı.
kedi.sesCikar()//Kalıtım var , kendi metodunu çalıştırdı.
kopek.sesCikar()//Kalıtım var , kendi metodunu çalıştırdı.

//PROTOCOL

protocol MyProtocol {
    var degisken:Int {get set}
    
    func metod1()
    func metod2() -> String
}

class ClassA : MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
}

var a = ClassA()

print(a.degisken)

a.metod1()

print(a.metod2())
