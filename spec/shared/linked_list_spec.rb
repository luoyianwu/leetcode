require'faker'
require_relative '../../lib/shared/linked_list.rb'

describe LinkedList do
  context 'when creating' do
    it 'accepts any value' do
      input = 5
      linked_list = LinkedList.new(input)
      expect(linked_list.head).to eq(Node.new(input))
    end

    it 'accepts nil' do
      linked_list = LinkedList.new(nil)
      expect(linked_list.head).to eq(Node.new(nil))
    end

    it 'accepts an array' do
      input = []
      for n in 0..4
        input << Faker::Name.name
      end
      linked_list = LinkedList.new(input)
      curr = linked_list.head
      for n in 0..4
        expect(curr.val).to eq(input[n])
        curr = curr.next
      end
      expect(curr).to be_nil
    end

    it 'accepts an empty array' do
    end
  end

  it 'gets nth node' do
    input = [1, 2, 3]
    l = LinkedList.new(input)
    expect(l.get('a')).to be_nil
    expect(l.get(0)).to eq(l.head)
    expect(l.get(0).val).to eq(input[0])
    expect(l.get(1)).to eq(l.head.next)
    expect(l.get(1).val).to eq(input[1])
    expect(l.get(2)).to eq(l.head.next.next)
    expect(l.get(2).val).to eq(input[2])
    expect(l.get(3)).to be_nil
  end

  it 'converts to array' do
  end
end

describe Node do
  context 'when creating' do
    it 'creates a head node with val 5' do
      node = Node.new(5)
      expect(node.val).to eq(5)
      # expect(node.prev).to be_nil
      expect(node.next).to be_nil
    end

    it 'creates a head node with nil' do
      node = Node.new(nil)
      expect(node.val).to be_nil
      # expect(node.prev).to be_nil
      expect(node.next).to be_nil
    end
  end
end