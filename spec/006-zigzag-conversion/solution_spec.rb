require_relative '../../lib/006-zigzag-conversion/solution.rb'

describe Solution do
  context 'with num_rows = 1' do
    it 'converts correctly' do
      expect(Solution.new.convert('teststring', 1)).to eq 'teststring'
    end
  end

  context 'with num_rows >= 2' do
    it 'converts correctly' do
      expect(Solution.new.convert('PAYPALISHIRING', 3)).to eq 'PAHNAPLSIIGYIR'
      expect(Solution.new.convert('PAYPALISHIRING', 4)).to eq 'PINALSIGYAHRPI'
      expect(Solution.new.convert('A,B,C', 2)).to eq 'ABC,,'
    end
  end
end