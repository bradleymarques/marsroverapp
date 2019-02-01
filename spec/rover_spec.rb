require './lib/rover'
require './lib/surface'

describe Rover do
  let(:surface) { Surface.new(5, 5) }
  let(:current_position) { {x_point: 2, y_point: 2} }

  describe 'turn_left' do
    before { rover.turn_left }

    context 'when it faces north' do
      let(:rover) { Rover.new(current_position, 'N', surface) }

      it 'faces WEST' do
        expect(rover.to_s).to eq('2 2 W')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(current_position, 'W', surface) }

      it 'faces SOUTH' do
        expect(rover.to_s).to eq('2 2 S')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(current_position, 'E', surface) }

      it 'faces NORTH' do
        expect(rover.to_s).to eq('2 2 N')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(current_position, 'S', surface) }

      it 'faces EAST' do
        expect(rover.to_s).to eq('2 2 E')
      end
    end
  end

  describe 'turn_right' do
    before { rover.turn_right }

    context 'when it faces north' do
      let(:rover) { Rover.new(current_position, 'N', surface) }

      it 'faces EAST' do
        expect(rover.to_s).to eq('2 2 E')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(current_position, 'W', surface) }

      it 'faces NORTH' do
        expect(rover.to_s).to eq('2 2 N')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(current_position, 'E', surface) }

      it 'faces SOUTH' do
        expect(rover.to_s).to eq('2 2 S')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(current_position, 'S', surface) }

      it 'faces WEST' do
        expect(rover.to_s).to eq('2 2 W')
      end
    end
  end

  describe 'move' do
    before { rover.move }

    context 'when tries move out of bounds' do
      let(:most_current_position) { {x_point: 5, y_point: 5} }

      let(:rover) { Rover.new(most_current_position, 'N', surface) }

      it 'stays still' do
        expect(rover.to_s).to eq('5 5 N')
      end
    end

    context 'when it faces north' do
      let(:rover) { Rover.new(current_position, 'N', surface) }

      it 'faces NORTH' do
        expect(rover.to_s).to eq('2 3 N')
      end
    end

    context 'when it faces west' do
      let(:rover) { Rover.new(current_position, 'W', surface) }

      it 'faces WEST' do
        expect(rover.to_s).to eq('1 2 W')
      end
    end

    context 'when it faces east' do
      let(:rover) { Rover.new(current_position, 'E', surface) }

      it 'faces EAST' do
        expect(rover.to_s).to eq('3 2 E')
      end
    end

    context 'when it faces south' do
      let(:rover) { Rover.new(current_position, 'S', surface) }

      it 'faces SOUTH' do
        expect(rover.to_s).to eq('2 1 S')
      end
    end
  end
end
