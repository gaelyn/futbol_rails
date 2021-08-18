class CreateGameTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :game_teams do |t|
      t.references :game, foreign_key: true
      t.references :team, foreign_key: true
      t.string :hoa
      t.string :result
      t.string :settled_in
      t.string :head_coach
      t.integer :goals
      t.integer :shots
      t.integer :tackles
      t.integer :pim
      t.integer :power_play_opps
      t.integer :power_play_goals
      t.float :face_off_win_percentage
      t.integer :giveaways
      t.integer :takeaways

      t.timestamps
    end
  end
end
