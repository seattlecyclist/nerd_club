require 'spec_helper'
require './lib/tic_tac_toe/game'

describe Game do
  subject {Game.new}

  it 'should identify a horizontal winner' do
    subject.move 'x', 0, 0
    subject.move 'y', 1, 0
    expect(subject.winner).to be_nil

    subject.move 'x', 0, 1
    subject.move 'y', 1, 1
    expect(subject.winner).to be_nil
    subject.move 'x', 0, 2

    expect(subject.winner).to eq 'x'
  end

  it 'should identify a vertical winner' do
    subject.move 'x', 0, 0
    subject.move 'y', 0, 1
    expect(subject.winner).to be_nil
    subject.move 'x', 1, 0
    subject.move 'y', 1, 1
    expect(subject.winner).to be_nil
    subject.move 'x', 2, 0

    expect(subject.winner).to eq 'x'
  end

  it 'should identify a diagonal down right winner' do
    subject.move 'x', 0, 0
    subject.move 'y', 0, 1
    expect(subject.winner).to be_nil
    subject.move 'x', 1, 1
    subject.move 'y', 1, 2
    expect(subject.winner).to be_nil
    subject.move 'x', 2, 2

    expect(subject.winner).to eq 'x'
  end

  it 'should identify a diagonal up right winner' do
    subject.move 'x', 2, 0
    subject.move 'y', 0, 1
    expect(subject.winner).to be_nil
    subject.move 'x', 1, 1
    subject.move 'y', 1, 2
    expect(subject.winner).to be_nil
    subject.move 'x', 0, 2

    expect(subject.winner).to eq 'x'
  end
end



