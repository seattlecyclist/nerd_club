require 'spec_helper'

# references craking coding interview question 17.7
describe 'baby names' do
  before do
    @names = {
        john: 10,
        jon: 5,
        jonny: 15,
        mike: 5,
        mikie: 3,
        micky: 1,
        devin: 12,
        dev: 2
    }

    @translations = [
        [:john, :jon],
        [:jon, :jonny],
        [:mike, :mikie],
        [:mike, :micky],
        [:devin, :dev],
    ]

  end

  it 'should count devin to dev' do
    expect(count(:devin)).to eq 14
  end

  it 'should johns' do
    expect(count(:john)).to eq 30
  end

  it 'should mike' do
    expect(count(:mike)).to eq 9
  end

  def count(name)
    sum = 0
    names = []
    names << name
    while !names.empty?
      name = names.pop
      sum += @names[name]
      names.concat(translation(name))
    end

    sum
  end

  def translation(name)
    return nil if name.nil?
    @translations.find_all {|n| n.first == name}.map{|x| x.last}
  end
end


