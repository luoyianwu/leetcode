# @param {Integer[]} height
# @return {Integer}
class Solution
  def max_area(height)
    max_area_between(height, 0, 0, height.length - 1)
  end

  def max_area_between(height, max_area, left_index, right_index)
    if (right_index - left_index == 1)
      return get_area(height[left_index], height[right_index], right_index - left_index)
    end
    area = get_area(height[left_index], height[right_index], right_index - left_index)
    new_max_area = [max_area, area].max
    if (height[left_index] < height[right_index])
      return [new_max_area, max_area_between(height, new_max_area, left_index + 1, right_index)].max
    else
      return [new_max_area, max_area_between(height, new_max_area, left_index, right_index - 1)].max
    end
  end

  def get_area(left_height, right_height, width)
    [left_height, right_height].min * width
  end
end