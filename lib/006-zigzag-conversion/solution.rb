# @param {String} s
# @param {Integer} num_rows
# @return {String}

require_relative '../shared/linked_list.rb'

class Solution
  def convert(s, num_rows)
    if (num_rows == 1)
      return s
    end

    arr = s.scan /./
    res = ''
    for curr_row in 1..num_rows
      index = curr_row - 1
      go_down = true

      while(index < arr.length)
        step = get_step(curr_row, num_rows, go_down)
        if step > 0
          res << arr[index]
          index += step
        end
        go_down = !go_down
      end
    end
    res
  end

  def get_step(curr_row, num_rows, go_down)
    if (go_down)
      return (num_rows - curr_row) * 2
    else
      return (curr_row - 1) * 2
    end
  end
end