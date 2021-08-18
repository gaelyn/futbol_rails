class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :franchise_id
      t.string :team_name
      t.string :abbreviation
      t.string :stadium
      t.string :link

      t.timestamps
    end
  end
end
