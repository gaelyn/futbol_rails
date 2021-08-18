FactoryBot.define do
  factory :game_team do
    hoa { ["home", "away"].sample }
    result { ["WIN", "LOSS"].sample }
    settled_in { ["OT", "REG"].sample }
    head_coach { Faker::Sports::Football.coach }
    goals { Faker::Number.within(range: 1..10) }
    shots { Faker::Number.within(range: 1..10) }
    tackles { Faker::Number.within(range: 1..10) }
    pim { Faker::Number.within(range: 1..10) }
    power_play_opps { Faker::Number.within(range: 1..10) }
    power_play_goals { Faker::Number.within(range: 1..10) }
    face_off_win_percentage { Faker::Number.within(range: 30.0..70.0) }
    giveaways { Faker::Number.within(range: 1..10) }
    takeaways { Faker::Number.within(range: 1..10) }
    game
    team
  end
end
