class GamesController < ApplicationController
  def index
    @games = Game.all
    @highest_score = Game.highest_total_score
    @lowest_score = Game.lowest_total_score
    # @percentage_home_wins = Game.percentage_home_wins
    # @percentage_visitor_wins = Game.percentage_visitor_wins
    # @percentage_ties = Game.percentage_ties
    # @count_of_games_by_season = Game.count_of_games_by_season
    # @average_goals_per_game = Game.average_goals_per_game
    # @average_goals_per_season = Game.average_goals_per_season
  end
end
