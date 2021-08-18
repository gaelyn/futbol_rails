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
      @game_team9 = create(:game_team, hoa: "away", result: "LOSS")
      @game_team10 = create(:game_team, hoa: "away", result: "LOSS")
    end

    describe '#home_wins' do
      it 'can find count of games won by home team' do
        expect(GameTeam.home_wins).to eq(3.0)
      end
    end

    describe '#percentage_home_wins' do
      it 'can find percentage of games that a home team has won' do
        expect(GameTeam.percentage_home_wins).to eq(30)
      end
    end

    describe '#visitor_wins' do
      it 'can find count of games won by away team' do
        expect(GameTeam.visitor_wins).to eq(2.0)
      end
    end

    describe '#percentage_visitor_wins' do
      it 'can find percentage of games that an away team has won' do
        expect(GameTeam.percentage_visitor_wins).to eq(20)
      end
    end
  end

  # describe 'instance methods' do
  #   describe '.' do
  #   end
  # end
end
