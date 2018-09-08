require_relative '../../lib/001-two-sum/solution.rb'

describe Solution do
  before(:example) do
    @s = Solution.new
  end

  it 'finds correct result' do
    expect(@s.two_sum([2, 7, 11, 15], 9)).to eq([0, 1])
  end
end
