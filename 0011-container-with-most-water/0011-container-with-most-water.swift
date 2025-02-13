class Solution {
    func maxArea(_ height: [Int]) -> Int {
        // we set default value for the max area on the first bar
        // the sorter wall it it how keeps the water 
        // if we take the taller the water will spill over
        let n = height.count
        var left =  0
        var right = n - 1
        var max_area =  0

        while left < right {
            let width = right - left
            let min_height = min(height[left], height[right])
            let area = width * min_height
            max_area = max(max_area, area)
            if (height[left] < height[right]){
                left += 1
            }
            else{
                right -= 1
            }
        }
        return max_area
    }
}