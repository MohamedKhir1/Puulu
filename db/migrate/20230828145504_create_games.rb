class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.date :date
      t.string :tournament
      t.string :location
      t.string :round
      t.integer :result
      t.integer :opponent_result
      t.references :team, null: false
      t.references :opponent_team, null: false

      t.timestamps
    end
    add_foreign_key :games, :teams, column: :team_id
    add_foreign_key :games, :teams, column: :opponent_team_id
  end
end
