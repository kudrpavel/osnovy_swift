//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum Brand: String {
    case honda = "Honda"
    case mercedes = "Mercedes-Benz"
    case audi = "Audi"
    case vw = "VolksWagen"
    case man = "Man"
    case volvo = "Volvo"

    var name: String {
           return ("Имя брэнда: \(rawValue)")
    }
}

enum EngineState {
    case start
    case stop
}

enum WindowState {
    case open
    case close
}

enum TypeCar {
    case Car
    case Truck
}

enum BodyTypeCar {
    case sedan
    case hatchback
    case universal
    case liftback
    case cupe
    case cabriolet
    case targa
    case pickup
    case minivan
    case formulaOne
}

enum BodyTypeTruck {
    case tiltSemiTrailer
    case jumbo
    case autoCoupler
    case refrigeratedVan
    case carTransporter
}

enum Action {
    case open
    case close
    case start
    case stop
    case checkBoxOn
    case checkBoxOff
    case checkWeghtOn
    case checkWeghtOff
}

//Задание 5

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

protocol Car {
    var brand: Brand { get set }
    var engineState: EngineState { get set }
    var windowState: WindowState { get set }
    
    mutating func operation()
}

extension Car {
   
    mutating func actWindow() {
        if windowState == .close {
            self.windowState == .open
        } else {
            self.windowState = .close
        }
    }
    
}

extension Car {
    
    mutating func actEngine() {
        if engineState == .stop {
            self.engineState == .start
        } else {
            self.engineState = .stop
        }
    }
}

class SportCar: Car {
    
    var brand: Brand
    
    var engineState: EngineState
    
    var windowState: WindowState
    
    var bodyTypeCar: BodyTypeCar
    
    var checkBoxOn: Action
    
    func operation() {
        if checkBoxOn == .checkBoxOff {
            self.checkBoxOn == .checkBoxOn
        } else {
            self.checkBoxOn = .checkBoxOff
        }
    }
    
    init(brand: Brand, engineState: EngineState, windowState: WindowState, bodyTypeCar: BodyTypeCar, checkBoxOn: Action) {
        self.brand = brand
        self.engineState = engineState
        self.windowState = windowState
        self.bodyTypeCar = bodyTypeCar
        self.checkBoxOn = checkBoxOn
    }
}

class TruckCar: Car {
    
    var brand: Brand
    
    var engineState: EngineState
    
    var windowState: WindowState
    
    var bodyTypeTruck: BodyTypeTruck
    
    var checkWeght: Action
    
    func operation() {
        if checkWeght == .checkWeghtOff {
            self.checkWeght == .checkWeghtOn
        } else {
            self.checkWeght = .checkBoxOff
        }
    }
    
    init(brand: Brand, engineState: EngineState, windowState: WindowState, bodyTypeTruck: BodyTypeTruck, checkWeght: Action) {
        self.brand = brand
        self.engineState = engineState
        self.windowState = windowState
        self.bodyTypeTruck = bodyTypeTruck
        self.checkWeght = checkWeght
    }
}


var sportCar1 = SportCar(brand: .audi, engineState: .start, windowState: .open, bodyTypeCar: .cabriolet, checkBoxOn: .checkBoxOff)

sportCar1.checkBoxOn
sportCar1.actEngine()
sportCar1.actWindow()




extension SportCar: CustomStringConvertible {
     var description: String {
        "Спортивный автомобиль: \(sportCar1)"
    }
}

print(sportCar1)



print(sportCar1.description)
