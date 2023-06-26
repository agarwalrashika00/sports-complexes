class CreatePlayerSports < ActiveRecord::Migration[7.0]
  def change
    create_table :player_sports do |t|
      t.references :player
      t.references :sport_branch
      t.string :batch_time
      t.boolean :current_month

      t.timestamps
    end
  end
end
