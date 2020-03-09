//: A Cocoa based Playground to present user interface

import AppKit
import Foundation



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

//struct Car {
//    var brand: Brand
//    var model: String
//    var color: String
//    var prodYear: Int
//    var bootVolume: Int
//    var engineState: EngineState
//    var windowState: WindowState
//    var trunkVolume: Int
//    var bodyTypeCar: BodyTypeCar
//
//    mutating func changeEngineState() {
//        if engineState == .stop {
//            self.engineState = .start
//        } else {
//            self.engineState = .stop
//        }
//    }
//
//    mutating func changeWindowState() {
//        if windowState == .close {
//            self.windowState = .open
//        } else {
//            self.windowState = .close
//        }
//    }
//
//
//    mutating func doSomething(_ action: Action) {
//        switch action {
//        case .close:
//            self.windowState = .close
//        case .open:
//            self.windowState = .open
//        case .start:
//            self.engineState = .start
//        case .stop:
//            self.engineState = .stop
//        case .move:
//            self.bootVolume = .max
//        }
//    }
//
//}


//struct Truck {
//    var brand: Brand
//    var model: String
//    var color: String
//    var prodYear: Int
//    var bootVolume: Int
//    var engineState: EngineState
//    var windowState: WindowState
//    var trunkVolume: Int
//    var BodyTypeTruck: BodyTypeTruck
//
//}

//var car1 = Car(brand: .audi, model: "a6", color: "Red", prodYear: 2018, bootVolume: 500, engineState: .stop, windowState: .close, trunkVolume: 200, bodyTypeCar: .sedan)
//
//var car2 = Car(brand: .honda, model: "Civic", color: "Gray", prodYear: 2005, bootVolume: 425, engineState: .stop, windowState: .open, trunkVolume: 150, bodyTypeCar: .hatchback)
//
//var truck1 = Truck(brand: .man, model: "200", color: "white", prodYear: 2015, bootVolume: 10000, engineState: .start, windowState: .close, trunkVolume: 5000, BodyTypeTruck: .refrigeratedVan)
//
//print("Тип кузова автомобиля 1 - \(car1.bodyTypeCar)")
//print("Двигатель грузовика 1 в положении \(truck1.engineState)")
//print("Автомобиль 2 -\(car2.prodYear) года выпуска")
//
//print("Двигатель грузовика 1 в положении \(truck1.engineState)")
//
//car1.doSomething(.start)
//print(car1.engineState)



//Урок 4. Введение в ООП

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.


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


enum TypeRace {
    case leman24
    case formulaone
    case rally
    case carting
    case drifting
    case trofy
    case ring
}


class Car {
    let brand: Brand
    let model: String
    let color: String
    let prodYear: Int
    
    var doorState: Action = .close
    var engineState: Action = .stop
    
    func execution(_ action: Action) {
        print("выполнение")
    }

    init(brand: Brand, model: String, color: String, prodYear: Int) {
        self.brand = brand
        self.model = model
        self.color = color
        self.prodYear = prodYear
    }
}

class SportCar: Car {
    let typeRace: TypeRace
    let maxSpeed: Int
    let bodyTypeCar: BodyTypeCar
    var checkBox: Action = .checkBoxOff // проверка в боксах не проведена
    
    
    override func execution(_ action: Action){
        switch action {
        case .checkBoxOn:
            self.checkBox = action
        case .open:
            self.doorState = action
        case .close:
            self.doorState = action
        case .start:
            self.engineState = action
        case .stop:
            self.engineState = action
        case .checkBoxOff:
            self.checkBox = action
        case .checkWeghtOn: break
            
        case .checkWeghtOff: break
            
        }

    }
    
    init(brand: Brand, model: String, color: String, prodYear: Int, typeRace: TypeRace, maxSpeed: Int, bodyTypeCar: BodyTypeCar) {
        self.typeRace = typeRace
        self.maxSpeed = maxSpeed
        self.bodyTypeCar = bodyTypeCar
        super.init(brand: brand, model: model, color: color, prodYear: prodYear)
    }
    
}


class TruckCar: Car {
    var trunkVolume: Int
    var maxWeight: Int
    var bodyTypeTruck: BodyTypeTruck
    var checkWeght: Action = .checkWeghtOff
    
    override func execution(_ action: Action){
        switch action {
        case .checkBoxOn: break
            
        case .open:
            self.doorState = action
        case .close:
            self.doorState = action
        case .start:
            self.engineState = action
        case .stop:
            self.engineState = action
        case .checkBoxOff: break
            
        case .checkWeghtOn:
            self.checkWeght = action
        case .checkWeghtOff:
            self.checkWeght = action
        }

    }
    
    init(brand: Brand, model: String, color: String, prodYear: Int, trunkVolume: Int, maxWeight: Int, bodyTypeTruck: BodyTypeTruck) {
        self.trunkVolume = trunkVolume
        self.maxWeight = maxWeight
        self.bodyTypeTruck = bodyTypeTruck
        super.init(brand: brand, model: model, color: color, prodYear: prodYear)
    }
}
 

var sportcar1 = SportCar(brand: Brand.honda, model: "Type R", color: "Red", prodYear: 2019, typeRace: .ring, maxSpeed: 250, bodyTypeCar: .cupe)

var sportcar2 = SportCar(brand: .mercedes, model: "F1", color: "Gray", prodYear: 2018, typeRace: .formulaone, maxSpeed: 340, bodyTypeCar: .formulaOne)

var truck1 = TruckCar(brand: .volvo, model: "DT1000", color: "White", prodYear: 2010, trunkVolume: 5000, maxWeight: 10000, bodyTypeTruck: .refrigeratedVan)

var truck2 = TruckCar(brand: .man, model: "k345", color: "Red", prodYear: 2000, trunkVolume: 8000, maxWeight: 5000, bodyTypeTruck: .jumbo)


print(sportcar1.checkBox)

print(truck2.checkWeght)

sportcar1.execution(Action.checkBoxOn)

truck2.execution(.checkWeghtOn)

print(sportcar1.checkBox)

print(truck2.checkWeght)
