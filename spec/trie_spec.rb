require 'spec_helper'
require './lib/trie/trie'
require './lib/trie/node'


describe Trie do
  context 'insertions' do
    subject { Trie.new() }

    before do
    end

    it 'should insert the words' do
      # MP still to build out
      expect(false).to be true
    end

  end
end

describe Node do
  context '#search' do
    before do
      @a = Node.new(nil, nil, 'a')
      @p = Node.new(nil, nil, 'p')
      @e = Node.new(nil, nil, 'e')
      @r = Node.new(nil, nil, 'r')
      @k = Node.new(nil, nil, 'k')
      @a.left = @r
      @a.right= @p
      @p.left = @e
      @r.left = @k

    end

    it 'should find a valid node' do
      expect(@node.search('c')).to be @c
    end
  end
end

