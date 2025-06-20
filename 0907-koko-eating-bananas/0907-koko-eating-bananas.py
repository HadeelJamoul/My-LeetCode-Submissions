import math

class Solution:
    def minEatingSpeed(self, piles: list[int], h: int) -> int:
        # Helper function to check if Koko can eat all bananas at speed k within h hours
        def k_works(k):
            hours = 0
            for pile in piles:
                hours += math.ceil(pile / k)
            return hours <= h

        # The minimum possible eating speed is 1
        # The maximum possible eating speed is the largest pile (Koko eats one pile per hour in the worst case)
        left = 1
        right = max(piles)

        # Binary search to find the minimum feasible eating speed
        while left < right:
            k = (left + right) // 2
            # If Koko can finish with speed k, try a smaller speed
            if k_works(k):
                right = k
            else:
                # Otherwise, increase the speed
                left = k + 1

        # At the end of the loop, left == right and is the minimum valid speed
        return left

print(Solution().minEatingSpeed([3,6,7,11], 8))
