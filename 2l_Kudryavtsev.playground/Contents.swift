//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

// Задание 1. Написать функцию, которая определяет, четное число или нет."

func even (num: Int) -> Bool {
    let evn =  (num % 2) == 0
    return evn
}

even(num: 10)

// Задание 2. Написать функцию, которая определяет, делится ли число без остатка на 3."

func delThree (num: Int) -> Bool {
    let three =  (num % 3) == 0
    return three
}

delThree(num: 33)


//Задание 3. Создать возрастающий массив из 100 чисел."

var myArray: [Int] = []

for i in 1...100 {
    myArray.append(i)
}

print(myArray)

//// Задание 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.



for (_, value) in myArray.enumerated() {
    if (value % 2) == 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!)
    }
    else if (value % 3) == 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!)
    }
}

print(myArray)


