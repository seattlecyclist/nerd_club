require 'spec_helper'
require './lib/maze/maze'


describe Maze do
  
  subject {Maze.new([
                        [0, "S", 0, 0, 0],
                        [0, 1, 1, 1, 0],
                        [0, 1, 0, 1, 0],
                        [0, 1, 0, 1, "E"],
                        [0, 0, 0, 0, 0],
                    ])}

  it 'should find a path out' do
    expect(subject.solve).to eq [ [0, 1], [1, 1], [2, 1], [3, 1],[3, 2],[3, 3],[4, 3] ]
  end
end

