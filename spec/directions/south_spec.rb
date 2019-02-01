require './lib/directions/south'

describe Directions::South do
  let(:south) { described_class.new }

  describe 'turn_left' do
    let(:east) { Directions::East }

    it 'returns east' do
      expect(an_instance_of(east))
      south.turn_left
    end
  end

  describe 'turn_right' do
    let(:west) { Directions::West }

    it 'returns west' do
      expect(an_instance_of(west))
      south.turn_right
    end
  end

  describe 'move' do
    context 'when current_position are at top right corner' do
      let(:top_right_corner) { {x_point: 5, y_point: 5} }
      let(:final_postion) { {x_point: 5, y_point: 4} }

      it 'returns [5, 4]' do
        expect(south.move(top_right_corner)).to eq(final_postion)
      end
    end
  end

  describe 'to_s' do
    it { expect(south.to_s).to eq('S') }
  end
end
