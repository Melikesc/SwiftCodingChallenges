import UIKit

/*---------------MEAN CALCULATE---------------
var numbers = [10,20,55,40,60,100,15,5]

var total = 0

for number in numbers {
    total = total + number
}

print("Total: \(total)")

print("Mean: \(total/numbers.count)")

 -------------------------------------------------*/

/*---------------CHANGE INDEXES----------------
var numbers = [1,2,3,4,5]

for (index, i) in numbers.enumerated(){
    let result = i * 2
    numbers[index] = result
}

print(numbers)
 -------------------------------------------------*/

/*---------------ODD AND EVEN NUMBERS---------------
var numbers = [1,2,3,4,5,6,7,8,9]

var oddNumbers = [Int]()
var evenNumbers = [Int]()

for number in numbers {
    let result = number % 2
    
    if result == 0 {
        evenNumbers.append(number)
    }
    if result == 1 {
        oddNumbers.append(number)
    }
}

print("Numbers: \(numbers)")
print("Odd numbers: \(oddNumbers)")
print("Even numbers: \(evenNumbers)")
 -------------------------------------------------*/

/*---------------RANDOM--------------
var numbers = [Int]()

for _ in 1...10 {
    
   let randomNumber = Int.random(in: 0...9)
   
   numbers.append(randomNumber)
}

numbers.sort()

print(numbers)
 -------------------------------------------------*/

/*---------------SCHOOL REPORT---------------
var grades = [Int]()
var lessons = [String]()

lessons.append("History")
grades.append(20)

lessons.append("Physics")
grades.append(80)

lessons.append("Math")
grades.append(100)

lessons.append("Biology")
grades.append(40)

lessons.append("Chemistry")
grades.append(60)

//20 80 100 40 60

var result = 0

for i in 0...(grades.count-1) {
    print("\(lessons[i]) : \(grades[i])")
    result = result + grades[i]
}

print("****************")
print("Ortalama : \(result/lessons.count)")
 -------------------------------------------------*/

/*---------------CONTROL--------------
var names = ["Ahmet","Mehmet","Ali","Serhat","Kadir","Ahmet"]
var controlNames = "Ahmett"

for i in names {
    if i == controlNames {
        print("This name is in the array")
        break
    }
}

 -------------------------------------------------*/
/*---------------DICTIONARY-----------------
var dict1 = [Int:String]()

var dict2 = [3.14:"Pi",2.71:"e"]

var dict3:[Int:String] = [1:"One",2:"Two",3:"Three"]

var cities = [16:"Bursa",34:"İstanbul",6:"Ankara"]

cities[35] = "İzmir"
cities[10] = "Balıkesir"

print(cities)

cities[16] = "Yeni Bursa"
cities.updateValue("Yeni İzmir", forKey: 35)
print(cities)

for (key,value) in cities {
    print("Key: \(key) , City: \(value)")
}

cities.removeValue(forKey: 35)
print(cities)

cities.isEmpty
cities.count
cities.first

var reverse = cities.reversed()
print(reverse)
 -------------------------------------------------*/

/*---------------DICTIONARY EXAMPLES---------------
var lessons = ["Chemistry","Math","Biology"]
var grades = [50,80,70]

var lessonGrades = Dictionary(uniqueKeysWithValues: zip(grades,lessons))

print(lessonGrades)

var itemPrices:[Double:String] = [15.99:"Book",59.99:"T-Shirt",239.99:"Watch"]

var prices = [Double](itemPrices.keys)
var items = [String](itemPrices.values)

print(prices)
print(items)
 -------------------------------------------------*/

/*---------------DICTIONARY EXAMPLES---------------
var school:[Int:String] = [154:"Ahmet",67:"Mehmet",871:"Zeynep",45:"Ahmet"]

var result1 = school.filter({$0.key > 70})
print(result1)

var result2 = school.filter({$0.value == "Ahmet"})
print(result2)

var result3 = school.filter({$0.value == "Ahmet" && $0.key > 70})
print(result3)
 -------------------------------------------------*/

/*---------------DICTIONARY EXAMPLES---------------
var lessonGrades = [String:Int]()

lessonGrades["History"] = 20
lessonGrades["Physics"] = 80
lessonGrades["Math"] = 100
lessonGrades["Chemistry"] = 50
lessonGrades["Biology"] = 40

var result = 0

for (lesson,grades) in lessonGrades {
    print("\(lesson) : \(grades)")
    result = result + grades
}
print("***************")

print("Mean : \(result / lessonGrades.count)")

-------------------------------------------------*/
