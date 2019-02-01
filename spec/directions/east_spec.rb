require './lib/directions/east'

describe Directions::East do
  let(:east) { described_class.new }

  describe 'turn_left' do
    let(:north) { Directions::North }

    it 'returns north' do
      expect(an_instance_of(north))
      east.turn_left
    end
  end

  describe 'turn_right' do
    let(:south) { Directions::South }

    it 'returns south' do
      expect an_instance_of(south)
      east.turn_right
    end
  end

  describe 'move' do
    context 'when current_position are at bottom left corner' do
      let(:bottom_left_corner) { {x_point: 0, y_point: 0} }
      let(:final_postion) { {x_point: 1, y_point: 0} }

      it 'returns [1, 0]' do
        expect(east.move(bottom_left_corner)).to eq(final_postion)
      end
    end
  end

  describe 'to_s' do
    it { expect(east.to_s).to eq('E') }
  end
end
