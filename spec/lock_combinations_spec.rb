require 'spec_helper'
require './lib/lock/lock'

describe 'cracking a locks combinations' do

  before do
    @lock = Lock.new
  end

  it 'should get all the valid combinations' do
    expect(@lock.combinations).to eq []
  end
end