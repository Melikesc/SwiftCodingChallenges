import UIKit

class Functions{
    func greet(){
        let sonuc = "hi"
        print(sonuc)
    }
    func greet2() -> String {
        let sonuc = "hi mel"
        return sonuc
    }
    //parameter
    func greet3(name:String){
        let sonuc = ("merhaba \(name)")
        print(sonuc)
    }
    
    func add(num1:Int,num2:Int) -> Int {
        let result = num1 + num2
        return result
    }
    
     //overloading: methodların class içerisinde tekrar tekrar kullanılması
    func carpma(sayi1:Int,sayi2:Int) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double,sayi2:Double) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String) {
        print("Çarpma : \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
    }
}

let f = Functions()
f.greet()
let gelenSonuc = f.greet2()
print("sonuc: \(gelenSonuc )")

f.greet3(name: "zeynep")

let toplam = f.add(num1: 10, num2: 20)
print("result: \(toplam)")

f.carpma(sayi1: 3, sayi2: 5, isim: "Zeynep")



//Static

class Asinifi {
    var x = 10
    
    func metod(){
        print("method çalıştı")
    }
}

let a = Asinifi()
print(a.x)
a.metod()
