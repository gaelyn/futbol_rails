class GameTeam < ApplicationRecord
  belongs_to :game
  belongs_to :team

  def self.wins(hoa)
    where('result = ?', 'WIN')
    .where('hoa = ?', hoa)
    .count
    .to_f
  end

  def self.percentage_wins(hoa)
    ((self.wins(hoa) / Game.count) * 100).round
  end

  def self.ties
    where('result = ?', 'TIE')
    .count
    .to_f
  end

  def self.percentage_ties
    ((self.ties / Game.count) * 100).round
  end
end
