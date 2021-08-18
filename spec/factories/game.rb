FactoryBot.define do
  factory :game do
    season { 20132014 }
    reg_post { ["Regular Season", "Postseason"].sample }
    date_time { "01/19/13" }
    away_team_id { 1 }
    home_team_id { 2 }
    away_goals { Faker::Number.within(range: 1..5) }
    home_goals { Faker::Number.within(range: 1..5) }
    venue { Faker::WorldCup.stadium }
    venue_link { Faker::Internet.url }
  end
end
