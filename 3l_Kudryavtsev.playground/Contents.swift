//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport

   // 1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
  //  2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
    //3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
    //4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
   // 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
    //6. Вывести значения свойств экземпляров в консоль.




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
}

enum BodyTypeTruck {
    case tiltSemiTrailer
    case jumbo
    case autoCoupler
    case refrigeratedVan
    case carTransporter
}

struct Car {
    var brand: Brand
    var model: String
    var color: String
    var prodYear: Int
    var bootVolume: Int
    var engineState: EngineState
    var windowState: WindowState
    var trunkVolume: Int
    var bodyTypeCar: BodyTypeCar
    
    mutating func changeEngineState() {
        if engineState == .stop {
            self.engineState = .start
        } else {
            self.engineState = .stop
        }
    }
    
    mutating func changeWindowState() {
        if windowState == .close {
            self.windowState = .open
        } else {
            self.windowState = .close
        }
    }
    
}


struct Truck {
    var brand: Brand
    var model: String
    var color: String
    var prodYear: Int
    var bootVolume: Int
    var engineState: EngineState
    var windowState: WindowState
    var trunkVolume: Int
    var BodyTypeTruck: BodyTypeTruck
    
}


enum CarMode: String {
    case changeEngineState = "запустить/заглушить двигатель"
    case changeWindowState =  "открыть/закрыть окна"
    case changeTrunkVolume = "погрузить/выгрузить из кузова/багажника груз определенного объема"
}


 //4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.


var car1 = Car(brand: .audi, model: "a6", color: "Red", prodYear: 2018, bootVolume: 500, engineState: .stop, windowState: .close, trunkVolume: 200, bodyTypeCar: .sedan)

var car2 = Car(brand: .honda, model: "Civic", color: "Gray", prodYear: 2005, bootVolume: 425, engineState: .stop, windowState: .open, trunkVolume: 150, bodyTypeCar: .hatchback)

var truck1 = Truck(brand: .man, model: "200", color: "white", prodYear: 2015, bootVolume: 10000, engineState: .start, windowState: .close, trunkVolume: 5000, BodyTypeTruck: .refrigeratedVan)

print("Тип кузова автомобиля 1 - \(car1.bodyTypeCar)")
print("Двигатель грузовика 1 в положении \(truck1.engineState)")
print("Автомобиль 2 -\(car2.prodYear) года выпуска")

truck1.changeEngineState()

print("Двигатель грузовика 1 в положении \(truck1.engineState)")

