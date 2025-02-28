class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var l_mult: Int = 1
        var r_mult: Int = 1

        let n: Int = nums.count
        var l_arr = Array(repeating: 0, count: n)
        var r_arr = Array(repeating: 0, count: n)
        var result = Array(repeating: 0, count: n)

            
            // left product
        for i in 0..<n{
            l_arr[i] = l_mult
            l_mult *= nums[i]
        }

            // right product
        for i in (0..<n).reversed(){
            r_arr[i] = r_mult
            r_mult *= nums[i]
        }
        

        for i in 0..<n {
            result[i] = l_arr[i] * r_arr[i]
        }

        return result
    }
}