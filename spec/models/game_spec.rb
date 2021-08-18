require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'relationships' do
    it { should have_many(:game_teams) }
    it { should have_many(:teams).through(:game_teams) }
  end

  describe 'class methods' do
    before :each do
      @game1 = Game.create!(id: 2012020001,
                            season: "20122013",
                            reg_post: "Regular Season",
                            date_time: "1/19/13",
                            away_team_id: 5,
                            home_team_id: 4,
                            away_goals: 1,
                            home_goals: 1,
                            venue: "SeatGeek Stadium",
                            venue_link: "/api/v1/venues/null")
      @game2 = Game.create!(id: 2012020002,
                            season: "20122013",
                            reg_post: "Regular Season",
                            date_time: "1/19/13",
                            away_team_id: 5,
                            home_team_id: 4,
                            away_goals: 3,
                            home_goals: 5,
                            venue: "SeatGeek Stadium",
                            venue_link: "/api/v1/venues/null")
      @game3 = Game.create!(id: 2012020003,
                            season: "20122013",
                            reg_post: "Regular Season",
                            date_time: "1/19/13",
                            away_team_id: 5,
                            home_team_id: 4,
                            away_goals: 3,
                            home_goals: 1,
                            venue: "SeatGeek Stadium",
                            venue_link: "/api/v1/venues/null")
      @games = Game.all

      @game_team1 = create(:game_team, game: @game1)
      @game_team2 = create(:game_team, game: @game2)
      @game_team3 = create(:game_team, game: @game3)
      @game_team4 = create(:game_team, game: @game3)
      @game_team5 = create(:game_team, game: @game2)
      @game_team6 = create(:game_team, game: @game1)
      @game_team7 = create(:game_team, game: @game1)
      @game_team8 = create(:game_team, game: @game1)
      @game_team9 = create(:game_team, game: @game1)
      @game_team10 = create(:game_team, game: @game1)


    end
    describe '#highest_total_score' do
      it 'can find highest sum of the winning and losing teams scores' do
        expect(@games.highest_total_score).to eq(8)
      end
    end

    describe '#lowest_total_score' do
      it 'can find lowest sum of the winning and losing teams scores' do
        expect(@games.lowest_total_score).to eq(2)
      end
    end
  end

  describe 'instance methods' do
    describe '.' do
    end
  end
end
