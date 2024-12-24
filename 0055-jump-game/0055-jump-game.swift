class Solution{
    func canJump(_ nums: [Int]) -> Bool {
        var goal: Int = nums.count - 1
        // from: starting value
        // through: ending value
        // by: step value
        for i in stride(from: goal, through: 0, by: -1 ){
            if(i + nums[i] >= goal){
                goal = i
            }
        }
        if(goal == 0){
            return true 
        }
        return false 
    }
}