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
// let parkingSystem: ParkingSystem = ParkingSystem(1, 1, 0)

// print(parkingSystem.addCar(1))
// print(parkingSystem.addCar(2)) 
// print(parkingSystem.addCar(3)) 
// print(parkingSystem.addCar(1)) 

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */