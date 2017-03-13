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

  end

end

