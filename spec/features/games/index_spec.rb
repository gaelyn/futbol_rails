require 'rails_helper'

RSpec.describe 'Games index' do
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

    @game_team1 = create(:game_team, hoa: "home", result: "WIN")
    @game_team2 = create(:game_team, hoa: "home", result: "WIN")
    @game_team3 = create(:game_team, hoa: "away", result: "WIN")
    @game_team4 = create(:game_team, hoa: "away", result: "LOSS")
    @game_team5 = create(:game_team, hoa: "home", result: "LOSS")

    visit "/games"
  end

  describe 'can see game stats' do
    it 'can see highest_total_score' do
      expect(page).to have_content('Highest Total Score')
      within("#highest-score") do
        expect(page).to have_content('8')
      end
    end

    it 'can see lowest_total_score' do
      expect(page).to have_content('Lowest Total Score')
      within("#lowest-score") do
        expect(page).to have_content('2')
      end
    end

    it 'can see percentage home wins' do
      expect(page).to have_content('Percentage Home Wins')
      within("#percentage-home-wins") do
        expect(page).to have_content('25%')
      end
    end

    it 'can see percentage visitor wins' do
      expect(page).to have_content('Percentage Visitor Wins')
      within("#percentage-visitor-wins") do
        expect(page).to have_content('13%')
      end
    end
  end
end
