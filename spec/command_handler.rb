require './lib/command_handler'

describe CommandHandler do
  describe 'handle_commands' do
    let(:rover) { double }
    let(:handler) { described_class.new(rover) }

    context 'when given input is L' do
      it 'turns the rover left' do
        expect(rover).to receive(:turn_left)
        handler.handle('L')
      end
    end

    context 'when given input is R' do
      it 'turns the rover right' do
        expect(rover).to receive(:turn_right)
        handler.handle('R')
      end
    end

    context 'when given input is M' do
      it 'moves the rover forward' do
        expect(rover).to receive(:move)
        handler.handle('M')
      end
    end

    context 'when given input which is not handleable' do
      it 'lets the rover stand still' do
        expect(rover).not_to receive(:turn_left)
        expect(rover).not_to receive(:turn_right)
        expect(rover).not_to receive(:move)
        handler.handle('B')
      end
    end
  end
end
