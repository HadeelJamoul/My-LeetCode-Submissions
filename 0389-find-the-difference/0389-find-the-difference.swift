class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
       var sCharCount: [Character:Int] = [:]
       var tCharCount: [Character:Int] = [:]
       for char in s{
           sCharCount[char, default:0] += 1
       }
       
       for char in t{
           tCharCount[char, default:0] += 1
       }
       
       //char = "e", tCharCount["e"] > sCharCount["e", default: 0]
       for char in tCharCount.keys{
           if tCharCount[char,default:0] > sCharCount[char,default:0]{
               return char
           }
       }
       
       // print(sCharCount)
       // print(tCharCount)
       return "h"; 
    }
}