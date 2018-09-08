# This algorithm causes an TLE. An identical Java algorithm does not.

# @param {String} s
# @return {String}
class Solution
  def longest_palindrome(s)
    return s if s.length <= 1
    res = s[0]
    table = Array.new(s.length) { Array.new(s.length) }

    for i in 0...s.length do
      (i).downto(0).each do |j|
        if (s[i] == s[j] && ((table[i - 1] && table[i - 1][j + 1]) || i - j <= 2))
          table[i][j] = true
          res = s[j..i] if (i - j + 1 > res.length)
        end
      end
    end
    res
  end
end