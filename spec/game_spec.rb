require 'game'

describe Game do
  let(:player_1) { double('player') }
  let(:player_2) { double('player') }
  subject(:game) { described_class.new(player_1, player_2) }

  it { is_expected.to respond_to(:results) }
  
  context 'P1 picks rock' do
    before do
      allow(player_1).to receive(:move).and_return('rock')
    end

    it 'can win' do
      allow(player_2).to receive(:move).and_return('scissors')

      expect(subject.results).to eq 'Win'
    end
  end

end
