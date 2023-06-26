class CreateSportBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :sport_branches do |t|
      t.references :sport
      t.references :branch

      t.timestamps
    end
  end
end
