import UIKit

//ARRAY

var fruits = [String]()

//veri ekleme
fruits.append("elma")
fruits.append("muz")
fruits.append("kiraz")

print(fruits)
//güncelleme
fruits[0] = "ahududu"
print(fruits)

//insert - indexi kaydırıp istenilen indexe istenilen değeri yazıyor
fruits.insert("portakal", at: 1)
print(fruits)

//veri okuma
print(fruits[2])

//array boyutu sorgulama
print("Boyut: \(fruits.count)")

//array bos index sorgulama
print("Bos kontrol: \(fruits.isEmpty)")


//veri yazdırma
for meyve in fruits{
    print("sonuc 1: \(meyve)")
}


//veri sıralı yazdırma
for (index, meyve) in fruits.enumerated() {
    print("sonuc \(index): \(meyve)")
}

//veri silme
fruits.remove(at: 1)
print(fruits)
