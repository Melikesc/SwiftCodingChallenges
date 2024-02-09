import UIKit

/* 1. Write a method that returns the kilometer entered as a parameter after converting it to mile. Mile = Km x 0.621 */ 

class Q1{
    func kmToMile(kilometer:Double)->Double{
        let mile = kilometer * 0.621
        return mile
    }
}
    let question1 = Q1()
    let miles = question1.kmToMile(kilometer: 2400.00)
    print("Conversion result: \(miles) miles.")


/* 2. Write a method that calculates the area of a rectangle with sides as parameters. */

class Q2{
    func calculateArea(longEdge : Int, shortEdge : Int) {
        let area = longEdge * shortEdge
        print("Area of Rectangle: \(area)")
    }
}
    let question2 = Q2()
    question2.calculateArea(longEdge: 12, shortEdge: 5)


/* 3. Write the method that calculates and returns the factorial value of the number entered as a parameter.*/

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



/* 4. Write a method that shows how many e letters are in the word entered as a parameter. */

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


/* 5. Write a method that calculates each interior angle according to the number of edges entered as a parameter and returns the result. 
Sum of interior angles = ( (Number of edges - 2) x 180 ) / Number of edges */
class Q5{
    func calculate(edge:Int) -> Double {
        let result = ( ( edge - 2 ) * 180) / edge
        return Double(result)
    }
}

let question5 = Q5().calculate(edge: 4)
print("Each angle is \(question5), the sum of the interior angles is  \(question5*3).")



/* 6. Write a method that calculates the salary according to the number of days entered as a parameter and returns the obtained value.
    - 8 hours can be worked in 1 day.
    - The hourly wage is : 40 ₺
    - Working hour fee : 80 ₺
    - Over 150 hours is considered overtime. */

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


/* 7. Write the method that calculates and returns the parking fee according to the parking time entered as a parameter.
    - 1 hour = 50 ₺
    - After 1 hour, every 1 hour is 10 ₺. */

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
