require 'spec_helper'
require './lib/string/recursive_string_permutation'
# Reference: https://www.interviewcake.com/question/ruby/recursive-string-permutations
#

describe 'determine all the permutations of a string' do

  before do
    @permuter = RecursiveStringPermutation.new
    @answer = %w(bruy bryu bury buyr byru byur rbuy rbyu ruby ruyb rybu ryub ubry ubyr urby uryb uybr uyrb ybru ybur yrbu yrub yubr yurb)
  end

  it 'should generate a list of the right size' do
    expect(@permuter.permute('ruby').size).to eq @answer.size
  end

  it 'should generate all the correct permutations' do
    expect(@permuter.permute('ruby').sort).to eq @answer
  end

end

