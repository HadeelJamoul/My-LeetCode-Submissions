class Solution {
  String addBinary(String a, String b) {
    a = a.split('').reversed.join();
    b = b.split('').reversed.join();

    while(a.length < b.length){
        a += "0";
    }

    while(b.length < a.length){
        b += "0";
    }

    String res = "";

    int carry = 0;
    for(int i = 0; i<max(a.length, b.length); i++){
        int b1 = int.parse(a[i]);
        int b2 = int.parse(b[i]);

        int r = (b1 + b2 + carry) % 2;
        carry = (b1 + b2 + carry) ~/ 2;

        res += r.toString();
    }

    if (carry > 0){
        res += "1";
    }


    res = res.split('').reversed.join();
    return res;
  }
}