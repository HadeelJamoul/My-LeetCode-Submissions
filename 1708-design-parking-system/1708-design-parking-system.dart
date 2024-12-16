class ParkingSystem {
  // [1 one big parking slot, 1 one medium parking slot, 0 small parking slot]
  // spaces = [1, 1, 0]
  // carTypes = [1, 2, 3, 1]

  List<int> spaces = [];

  ParkingSystem(int big, int medium, int small) {
    spaces = [big, medium, small];
  }

  bool addCar(int carType) {
    // spaces[1-1] =spaces[0] = 1 >0
    // spaces[2-1] =spaces[1] = 1 >0 
    // spaces[3-1] =spaces[2] = 0 => return false
    // spaces[1-1] =spaces[0] = 0 => return false
    if (spaces[carType -1] > 0) {
      //spaces[0] = spaces[0] - 1 => 1-1 =0
      //spaces[i] = spaces[1] - 1 => 1-1 =0
      spaces[carType - 1] -= 1;
      return true;
    }
    return false;
  }
}

// void main() {
//   ParkingSystem parkingSystem = ParkingSystem(1, 1, 0);

//   print(parkingSystem.addCar(1)); // true
//   print(parkingSystem.addCar(2)); // true
//   print(parkingSystem.addCar(3)); // false
//   print(parkingSystem.addCar(1)); // false
// }

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * ParkingSystem obj = ParkingSystem(big, medium, small);
 * bool param1 = obj.addCar(carType);
 */