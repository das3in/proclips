class CreateTeamfights < ActiveRecord::Migration[5.1]
  def change
    create_table :teamfights do |t|
      t.references :match, foreign_key: true
      t.string :start_time_game
      t.string :end_time_game
      t.string :start_time_youtube
      t.string :end_time_youtube

      t.timestamps
    end
  end
end
