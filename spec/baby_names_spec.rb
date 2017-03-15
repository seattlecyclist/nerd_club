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
    expect(count(:john)).to eq 9
  end

end


def count(name)
  0
end