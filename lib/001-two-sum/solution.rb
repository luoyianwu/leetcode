require 'byebug'

class Solution

  # @param {Integer[]} nums
  # @param {Integer} target
  # @return {Integer[]}
  def two_sum(nums, target)
    h = Hash.new
    res = nil
    for i in 0...nums.length
      if (h.include?(nums[i]))
        res = [h[nums[i]], i]
        break
      end
      h[target - nums[i]] = i
    end
    res
  end
end