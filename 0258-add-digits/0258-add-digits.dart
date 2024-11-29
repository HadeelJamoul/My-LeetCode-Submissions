class Solution {
  int addDigits(int num) {
    // 38 > 10
    // 8 < 10
    // 11 > 10

    //? 2 > 10 ? NO
    //? NOW NUM < 10 Break the loop
    while (num >= 10) {
      // sum = 0
      // sum = 0
      int sum = 0;

      // num = 38 > 0
      // num = 3 > 0

      //? NOW NUM = 0 Break the loop

      //* LOOP TWO
      // num = 11 > 0
      // num = 1 > 0

      //? NOW NUM = 0 Break the loop
      while (num > 0) {
        // sum = (38 / 10 = 3.8) 0 + 8
        // sum = (3 / 10 = 0.3) 8 + 3 = 11

        //* LOOP TWO
        // sum = (11 / 10 = 1.1) 0 + 1 = 1
        // sum = (1 / 10 = 0.1) 1 + 1 = 2;
        sum += num % 10;
        // num = (38 / 10 = 3.8) 3
        // num = (3 ~/ 10 = 0.3 ~ 0)

        //* LOOP TWO
        // num = (11 / 10 = 1.1) 1
        // num = (1 / 10 = 0.1) 0
        num = num ~/ 10;
      }

      // not reached yet

      // num = 11
      // num = 2
      num = sum;
    }
    // return 2
    return num;
  }
}