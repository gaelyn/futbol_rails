class GameTeam < ApplicationRecord
  belongs_to :game
  belongs_to :team

  def self.home_wins
    where('result = ?', 'WIN')
    .where('hoa = ?', 'home')
    .count
    .to_f
  end

  def self.percentage_home_wins
    ((self.home_wins / Game.count) * 100).round
  end

  def self.visitor_wins
    where('result = ?', 'WIN')
    .where('hoa = ?', 'away')
    .count
    .to_f
  end

  def self.percentage_visitor_wins
    ((self.visitor_wins / Game.count) * 100).round
  end
end
