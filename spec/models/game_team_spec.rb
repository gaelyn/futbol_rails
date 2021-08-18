require 'rails_helper'

RSpec.describe GameTeam, type: :model do
  describe 'relationships' do
    it { should belong_to(:game) }
    it { should belong_to(:team) }
  end

  # describe 'validations' do
  #   it { should validate_presence_of(:) }
  # end


  describe 'class methods' do
    before :each do
      @game_team1 = create(:game_team, hoa: "home", result: "WIN")
      @game_team2 = create(:game_team, hoa: "home", result: "WIN")
      @game_team3 = create(:game_team, hoa: "home", result: "WIN")
      @game_team4 = create(:game_team, hoa: "home", result: "LOSS")
      @game_team5 = create(:game_team, hoa: "home", result: "LOSS")
      @game_team6 = create(:game_team, hoa: "away", result: "WIN")
      @game_team7 = create(:game_team, hoa: "away", result: "WIN")
      @game_team8 = create(:game_team, hoa: "away", result: "LOSS")
      @game_team9 = create(:game_team, hoa: "home", result: "TIE")
      @game_team10 = create(:game_team, hoa: "away", result: "TIE")
    end

    describe '#wins' do
      it 'can find count of games won by home or away team' do
        expect(GameTeam.wins('home')).to eq(3.0)
        expect(GameTeam.wins('away')).to eq(2.0)
      end
    end

    describe '#percentage_wins' do
      it 'can find percentage of games that a home or away team has won' do
        expect(GameTeam.percentage_wins('home')).to eq(0.3)
        expect(GameTeam.percentage_wins('away')).to eq(0.2)
      end
    end

    describe '#ties' do
      it 'can find count of games tied' do
        expect(GameTeam.ties).to eq(1.0)
      end
    end

    describe '#percentage_ties' do
      it 'can find percentage of games tied' do
        expect(GameTeam.percentage_ties).to eq(0.1)
      end
    end
  end

  # describe 'instance methods' do
  #   describe '.' do
  #   end
  # end
end
