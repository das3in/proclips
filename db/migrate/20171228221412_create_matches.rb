class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.references :blue_team, index: true, foreign_key: { to_table: :teams }
      t.references :red_team, index: true, foreign_key: { to_table: :teams }
      t.references :winner, index: true, foreign_key: { to_table: :teams }
      t.references :tournament, foreign_key: true
      t.string :youtube_url

      t.timestamps
    end
  end
end
