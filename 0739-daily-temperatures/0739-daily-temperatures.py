# 
class Solution:
    def dailyTemperatures(self, temperatures: list[int]) -> list[int]:
        temps = temperatures
        answer = [0] * len(temps)
        stk = []
        # we but the temperatures on the stack
        # when we find higher temp we remove the current temp
        # we have to put tuple of the temp and it's index
        # so we fill the array of zeros with by
        # our current index - our old index to calculate the difference
        # enumerate get this "i" as index and this "t" as value
        for i, t in enumerate(temps):
            # we get the top of the stack first value because we are add tuple to the stack
            # -1 means the last value with the index 0
            # 
            while stk and stk[-1][0] < t :
                # if the top of the stack got lower temp than the current tamp we pop up the last
                # pop off the tuple and plug in the temperature that was there and the index that was there
                stk_t, stk_i = stk.pop() 
                # i => current index, stk_i => the old index
                answer[stk_i] = i - stk_i
            
            # we always want to stack the tuple of the current temperature and the current index 
            stk.append((t, i))
        return answer