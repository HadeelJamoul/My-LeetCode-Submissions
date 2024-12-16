class ParkingSystem {
    var spaces: [Int]

    init(_ big: Int, _ medium: Int, _ small: Int) {
        spaces = [big, medium, small]
    }
    
    func addCar(_ carType: Int) -> Bool {
        if(spaces[carType - 1] > 0){
            spaces[carType - 1] -= 1
            return true
        }
        return false
    }
}

// print(ParkingSystem(1,1,0).addCar(1))
// print(ParkingSystem(1,1,0).addCar(2))
// print(ParkingSystem(1,1,0).addCar(3))
// print(ParkingSystem(1,1,0).addCar(1))

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */