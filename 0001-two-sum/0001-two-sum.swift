class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map : [Int:Int] = [:]
        for i in 0..<nums.count {
            map[nums[i]] = i
        }
        for i: Int in 0..<nums.count {
            let y: Int = target - nums[i]
            if(map.keys.contains(y) && map[y] != i){
                return [i, map[y]!]
            }
        }
        print(map)
        return []
    }
}