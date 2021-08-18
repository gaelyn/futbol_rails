class Game < ApplicationRecord
  has_many :game_teams
  has_many :teams, through: :game_teams

  def self.highest_total_score
    select('games.*, away_goals + home_goals AS score')
    .order('score DESC')
    .first
    .score
  end

  def self.lowest_total_score
    select('games.*, away_goals + home_goals AS score')
    .order('score DESC')
    .last
    .score
  end

  def self.count_of_games_by_season
    group(:season).order(season: :asc).count(:season)
  end
end
