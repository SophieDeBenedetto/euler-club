require 'spec_helper'

describe '#names_sum' do
  it 'returns the sum of the name scores' do
    expect(SumSomeNames.new('p_022names.txt').sum_of_scores).to eq(871198282)
  end
end