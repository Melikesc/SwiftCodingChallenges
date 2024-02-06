import UIKit

/* 1.Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız. Mile = Km x 0.621 */

class Q1{
    func kmToMile(kilometer:Double)->Double{
        let mile = kilometer * 0.621
        return mile
    }
}
    let question1 = Q1()
    let miles = question1.kmToMile(kilometer: 2400.00)
    print("Conversion result: \(miles) miles.")


/* 2.Kenarları parametre olarak girilen ve dikdörtgenin alanını
hesaplayan bir metod yazınız. */

class Q2{
    func calculateArea(longEdge : Int, shortEdge : Int) {
        let area = longEdge * shortEdge
        print("Area of Rectangle: \(area)")
    }
}
    let question2 = Q2()
    question2.calculateArea(longEdge: 12, shortEdge: 5)



/* 3.Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri
döndüren metodu yazınız.*/

class Q3{
    func calculateFactorial(n:Int) -> Int{
        if n == 0 || n == 1 {
            return 1
        }else{
            return n * calculateFactorial(n: n-1)
        }
    }
}

let question3 = Q3()
let factorial = question3.calculateFactorial(n: 6)
print("Factorial: \(factorial)")



/* 4.Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu
gösteren bir metod yazınız.*/

class Q4{
    func countLetters(word:String) {
        var counter = 0
        for letter in word {
            if letter == "e" || letter == "E" {
                counter += 1
            }
        }
       print("There are atotal of \(counter) letters in the word you entered.")
    }
}
let question4 = Q4()
question4.countLetters(word: "Melike")


/* 5.Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metod yazınız. İç açılar toplamı = ( (Kenar sayısı - 2) x 180 ) / Kenar sayısı */

class Q5{
    func calculate(edge:Int) -> Double {
        let result = ( ( edge - 2 ) * 180) / edge
        return Double(result)
    }
}

let question5 = Q5().calculate(edge: 4)
print("Each angle is \(question5), the sum of the interior angles is  \(question5*3).")



/* 6.Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
    • 1 günde 8 saat çalışılabilir.
    • Çalışma saat ücreti : 40 ₺
    • Mesai saat ücreti : 80 ₺
    • 150 saat üzeri mesai sayılır. */

class Q6{
    func calculateSalary(day:Int)->Double{
        let workingHours = day * 8
        let normalWorkPrice = 40
        let extraWorkPrice = 80
        let workingHoursLimit = 150
        
        let salary = workingHours * normalWorkPrice
        
        var extrahours = 0
        if extrahours > workingHoursLimit {
            extrahours = workingHours - workingHoursLimit
        }
        let extraSalary = extrahours * extraWorkPrice
        let netSalary = salary + extraSalary
        
        
        return Double(netSalary)
    }
}
let question6 = Q6()
var maas = question6.calculateSalary(day: 200)
print("Net Salary is: \(maas)")


/* 7.Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yazınız.
    • 1 saat = 50 ₺
    • 1 saat aşımından sonra her 1 saat , 10 ₺’dir. */

class Q7{
    func parkingPrice(hour:Int) -> Int {
        var hourPrice = 50
        var extraHourPrice = 10
        
        if hour <= 1 {
            return hourPrice
        }
        else if hour > 1 {
            var price = hourPrice + (hour - 1) * extraHourPrice
            return price
        }
        return price
    }
    
}
let question7 = Q7()
let price = question7.parkingPrice(hour: 5)
print(price)
