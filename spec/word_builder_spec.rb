require 'spec_helper'
require './lib/string/word_builder'

describe WordBuilder do

  # ./sample_dictionary.txt is a file I generated with every other 200 lines from:
  # '/usr/share/dict/words'
  subject { WordBuilder.new('./sample_dictionary.txt') }

  it 'should make valid words' do
    expect(subject.wordify([])).to eq []
  end

end

