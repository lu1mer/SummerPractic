import UIKit

class Car {
    var brand: String?
    var model: String
    var year: Int
    var power: Int
    var type: CarType?
    
    init( model: String, year: Int, power:Int) {
        self.model = model
        self.year = year
        self.power = power
        
    }
    
}

enum CarType{
    case ElectricCar
    case GasolineCar
    case DieselCar
}

enum Tuning{
    case nonTuning
    case stage1
    case stage2
    case stage3
}
class MersedesBenz: Car{
    var tuning : Tuning
    var equipment: String
    init(brand: String, model: String, year: Int, power:Int, tuning: Tuning, equipment: String) {
        self.tuning = tuning
        self.equipment = equipment
        super.init(model:model, year:year,power: power)
        self.brand = "MersedesBenz"
        self.type = CarType.DieselCar
    }
}

class BMW: Car{
    var tuning : Tuning
    var equipment: String
    init(brand: String, model: String, year: Int, power:Int, tuning: Tuning, equipment: String) {
        self.tuning = tuning
        self.equipment = equipment
        super.init(model:model, year:year,power: power)
        self.brand = "BMW"
        self.type = CarType.GasolineCar
    }
}

class Tesla: Car{
    var tuning : Tuning
    var equipment: String
    init(brand: String, model: String, year: Int, power:Int, tuning: Tuning, equipment: String) {
        self.tuning = tuning
        self.equipment = equipment
        super.init(model:model, year:year,power: power)
        self.brand = "Tesla"
        self.type = CarType.ElectricCar
    }
}
class Lada: Car{
    var tuning : Tuning
    var equipment: String
    init(brand: String, model: String, year: Int, power:Int,tuning: Tuning, equipment: String) {
        self.tuning = tuning
        self.equipment = equipment
        super.init(model:model, year:year,power: power)
        self.brand = "Lada"
        self.type = CarType.GasolineCar
    }
}

class CreationCar{
    static func createCar(brand: String, model: String, year: Int, power:Int, tuning: Tuning, equipment: String) -> Car{
        switch brand{
        case "BMW":
            return  BMW(brand:brand, model:model, year:year, power:power, tuning:tuning, equipment:equipment)
        case "MersedesBenz":
            return  MersedesBenz(brand:brand, model:model, year:year, power:power, tuning:tuning, equipment:equipment)
        case "Tesla":
            return  Tesla(brand:brand, model:model, year:year, power:power, tuning:tuning, equipment:equipment)
        case "Lada":
            return  Lada(brand:brand, model:model, year:year, power:power, tuning:tuning, equipment:equipment)
        default:
            return  Lada(brand:brand, model:model, year:year, power:power, tuning:tuning, equipment:equipment)
        }
    }
}
var Mers = CreationCar.createCar(brand: "MersedesBenz", model: "E63", year: 2015, power: 230, tuning: Tuning.stage2, equipment: "Lux")
var Bmw = CreationCar.createCar(brand: "BMW", model: "M4", year: 2020, power: 400, tuning: Tuning.stage1, equipment: "Lux")
var Teslac = CreationCar.createCar(brand: "Tesla", model: "Model S", year: 2020, power: 350, tuning: Tuning.nonTuning, equipment: "Simple")
var Ladac = CreationCar.createCar(brand: "Lada", model: "Granta", year: 2024, power: 110, tuning: Tuning.nonTuning, equipment: "Bad")

func determineTheWinnerOfRace(car1: Car, car2: Car) -> Void{
    if car1.power > car2.power{
        print("Победил",car1.brand!,car1.model)
    }
    else{
        print("Победил",car2.brand!,car2.model)
    }
}

var listCar: [Car] = [Mers, Bmw, Teslac, Ladac]
print("Start Race")

for j in 0..<listCar.count{
    for i in (j+1)..<listCar.count {
        print("Гонка между:",listCar[j].brand!, "и",listCar[i].brand! )
        determineTheWinnerOfRace(car1: listCar[j],car2: listCar[i])
    }
}
print("End Race")
