require 'spec_helper'
# references craking coding interview question 1.8 page 204
describe 'zeroing out a matrix' do
  before do
    @input =[
        [0, 1, 1, 1],
        [1, 1, 1, 1],
        [1, 0, 1, 1],
        [1, 1, 1, 0]
    ]

    @result =[
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
    ]
  end

  it 'should zero_out the matrix' do
    expect(zero_out(@input)).to eq @result
  end

  def zero_out(input)
    flip_rows = Set.new
    flip_columns = Set.new

    input.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        if cell == 0
          flip_rows << row_index
          flip_columns << column_index
        end
      end
    end

    flip_rows.each do |r|
      input[r].each_with_index { |cell, i| input[r][i] = 0 }
    end

    flip_columns.each_with_index do |c, ci|
      input.each_with_index {|r, ri| input[ri][c] = 0}
    end

    input
  end
end

