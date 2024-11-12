class NumArray {
  late List<int> prefixSum;

  NumArray(List<int> nums) {
    prefixSum = List<int>.filled(nums.length, 0);
    print('init prefix: $prefixSum');

    int sum = 0;
    for (int i = 0; i < nums.length; ++i) {
      sum = sum + nums[i];
      prefixSum[i] = sum;
    }
    print('prefix: $prefixSum');
  }

  int sumRange(int left, int right) {
    int rightSum = prefixSum[right];
    int leftSum = (left > 0) ? prefixSum[left - 1] : 0;
    return rightSum - leftSum;
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */