require 'spec_helper'

describe '#bubble_sort' do 
  it 'sorts a series of numbers from least to greatest' do
    array = [1, 5, 87, 55, 39, 1001, 100, 1010, 101, 2, 3, 4, 6, 10]
    expect(bubble_sort(array)).to eq (array.sort!)
  end

  it 'sorts a series of one million numbers' do
    array = Array(0..1000000)
    array.shuffle!
    expect(bubble_sort(array)).to eq (array.sort!)
  end

end
