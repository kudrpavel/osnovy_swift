//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



//print(sqrt(9.0))   // 3.0
//print(pow(3.0, 3)) // 27.0



print("Необходимо решить квадратное уравнение: a * x ^ 2 + b * x + c = 0. Решить квадратное уравнение — это значит найти множество его корней (x).")

var a: Double = 10
var b: Double = 100
var c: Double = 100


print("Примем: a = " + String(a) + ", b = " + String(b) + ", c = " + String(c) + ". Тогда выражение будет записано в виде: " + String(a) + "x^2 + " + String(b) + "x + " + String(c) + " = 0")
print("Вычиляем дискриминант: D = b ^ 2 - 4ac, D = " + String(b) + " ^ 2 - 4 * " + String(a) + " * " + String(c))
var D = b * b - 4 * a * c
print("Получаем D = " + String(D))

if D < 0 {
    print("Корни отсутствуют")
} else if D == 0 {
    print("Корень равен x = " + String(-(b / (2 * a))))
} else if D > 0 {
    let Koren: Double = sqrt(b * b - 4 * a * c)
    let One: Double = (-b + Koren) / (2 * a)
    let Two: Double = (-b - Koren) / (2 * a)
    print("Корень 1 равен x1 = " + String(One) + ", Корень 2 равен x2 = " + String(Two))
}

print("Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника")
a = 10
b = 50
print("Примем: a = " + String(a) + ", b = " + String(b))
var S = (a * b) / 2
c = sqrt(a * a + b * b)
var P = a + b + c
print("Площадь прямоугольного треугольника S = (a * b) / 2, S = " + String(S))
print("Гипотенуза равна " + String(c))
print("Периметр равен " + String(P))


