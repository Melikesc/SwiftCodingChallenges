import UIKit


//Switch
var ay = 14
switch ay {
case 1: print("January")
case 2: print("February")
case 3: print("March")
case 4: print("April")
case 5: print("May")
case 6: print("June")
case 7: print("July")
case 8: print("August")
case 9: print("September")
case 10: print("October")
case 11: print("November")
case 12: print("December")
default: print("no other month")
}

//for in
for i in 1...6{
    print("Order: \(i)")
}

// 0-100, spaced by 5
for i in stride(from: 0, through: 100, by: 5){
    print(i)
}
// 100-0, spaced by 5
for j in stride(from: 100, through: 0, by: -5){
    print(j)
}

//1-2-3
var sayac = 1
while sayac < 4 {
    print(sayac)
    sayac += 1 //sayac = sayac + 1
}

for i in 1...5{
    if i == 3{
        break
    }
    print("loop1: \(i)")
}
for i in 1...5{
    if i == 3{
        continue
    }
    print("loop: \(i)")
}


