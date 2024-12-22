class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        // Non Mutating => sorted gives a new list
        // Mutating => sort gives the same array but sorted used with let
        let sortedG : [Int] = g.sorted()
        let sortedS : [Int] = s.sorted()
        var counter : Int = 0
        var p1:Int = 0
        var p2:Int = 0
        while p1 < sortedG.count && p2 < sortedS.count {
            if sortedG[p1] <= sortedS[p2]{
                p1 += 1
                counter += 1
            }
            p2 += 1
        }
        return counter
    }
}