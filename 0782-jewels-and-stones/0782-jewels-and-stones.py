class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        freq = {}
        sum = 0
        for stone in stones:
            if stone in freq:
                freq[stone] += 1
            else:
                freq[stone] = 1
        for jewel in jewels:
            if jewel in stones:
                sum += freq[jewel]
        return sum