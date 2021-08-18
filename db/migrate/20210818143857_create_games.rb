class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :season
      t.string :reg_post
      t.string :date_time
      t.integer :away_team_id
      t.integer :home_team_id
      t.integer :away_goals
      t.integer :home_goals
      t.string :venue
      t.string :venue_link

      t.timestamps
    end
  end
end
