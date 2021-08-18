FactoryBot.define do
  factory :team do
    franchise_id { 1 }
    team_name { Faker::Sports::Football.team }
    abbreviation { Faker::Esport.team }
    stadium { Faker::WorldCup.stadium }
    link { Faker::Internet.url }
  end
end
