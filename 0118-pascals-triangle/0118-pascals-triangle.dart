class Solution {
  List<List<int>> generate(int numRows) {
    // res = [[1]]
    List<List<int>> res = [
      [1]
    ];
    //? ////////////////////////////////////////////////////////////////////
    //i=0
    for (int i = 0; i < numRows - 1; ++i) {
      //? we gonna take the last row, we gonna add zero at the begging of it and the last of it
      //temp= [0,1,0]
      List<int> temp = [0] + res[res.length - 1] + [0];
      List<int> row = [];
      //? the length of the last row that we add in result

      // rowLimit = 1
      int rowListLimit = res[res.length - 1].length;
      // j=0
      // j=1
      for (int j = 0; j < rowListLimit + 1; ++j) {
        //temp[0]=0 + temp[0+1]=1 => row= [1]
        //temp[1]=1 + temp[1+1]=0 => row=[1,1]
        row.add(temp[j] + temp[j + 1]);
      }
      //res=[[1],[1,1]]
      res.add(row);
    }
    return res;
  }
}