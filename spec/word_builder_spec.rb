require 'spec_helper'
require './lib/string/word_builder'

describe WordBuilder do
  subject { WordBuild.new('/usr/share/dict/words ') }

  it 'should make valid words' do
    expect(subject.wordify([])).to eq []
  end

end

