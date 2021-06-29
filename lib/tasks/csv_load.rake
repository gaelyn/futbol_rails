require 'csv'

namespace :csv_load do
  desc "Loads data from csv files"


  task teams: :environment do
     file = "./db/data/teams.csv"

    CSV.foreach(file, headers: true, header_converters: :symbol) do |row|
      Team.find_or_create_by!(row.to_hash)
    end
  end

  task games: :environment do
     file = "./db/data/games.csv"

    CSV.foreach(file, headers: true, header_converters: :symbol) do |row|
      Game.find_or_create_by!(row.to_hash)
    end
  end

  task game_teams: :environment do
     file = "./db/data/game_teams.csv"

    CSV.foreach(file, headers: true, header_converters: :symbol) do |row|
      GameTeam.find_or_create_by!(row.to_hash)
    end
  end

  task all: :environment do
    Rake::Task['csv_load:teams'].execute
    Rake::Task['csv_load:games'].execute
    Rake::Task['csv_load:game_teams'].execute
  end

  task correction_seq_id: :environment do
    ActiveRecord::Base.connection.tables.each do |t|
        ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end
end
