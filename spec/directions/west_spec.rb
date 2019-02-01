require './lib/directions/west'

describe Directions::West do
  let(:west) { described_class.new }

  describe 'turn_left' do
    let(:south) { Directions::South }

    it 'returns south' do
      expect(an_instance_of(south))
      west.turn_left
    end
  end

  describe 'turn_right' do
    let(:north) { Directions::North }

    it 'returns north' do
      expect(an_instance_of(north))
      west.turn_right
    end
  end

  describe 'move' do
    context 'when current_position are at bottom right corner' do
      let(:bottom_right_corner) { {x_point: 5 , y_point: 0} }
      let(:final_postion) { {x_point: 4, y_point: 0} }

      it 'returns [4, 0]' do
        expect(west.move(bottom_right_corner)).to eq(final_postion)
      end
    end
  end

  describe 'to_s' do
    it { expect(west.to_s).to eq('W') }
  end
end
