require 'spec_helper'
require './lib/cake/duffel_bag'


describe DuffelBag do
  context 'optimize' do
    subject { DuffelBag.new() }

    before do
    end

    it 'should get the right answer' do
      expect(subject.max_duffel_bag_value( [ [7, 160], [3, 90], [2, 15] ], 20)).to eq 555
    end


    it 'should get the right answer2' do
      expect(subject.max_duffel_bag_value( [ [16, 160.00], [5, 49]], 20)).to eq 190
    end

  end

end

