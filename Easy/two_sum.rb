# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums_hash = {}
    res = []
    finished = false
    nums.each_with_index do |num, idx|
      unless nums_hash[target - num] 
        nums_hash[target - num] = idx
      else 
        res = [nums_hash[target - num], idx]
        finished = true
      end
    end
    if finished 
      nil
    else 
      nums.each_with_index do |num, idx|
        if nums_hash[num]
          res = [nums_hash[num], idx]
        end
      end
    end
    return res
end

# exactly one pair
# can be same number that adds to target
# constraints are large so needs to be efficient solution

# nums array and iterate over the array checking both the number and the index -- outer loop, or i
# iterate over nums array starting at i + 1, j -- inner loop
# for each iteration in the inner loop -- check whether nums[i] + nums[j] == target
# if nums[i] + nums[j] == target then return [i, j]