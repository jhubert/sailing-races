class CreateRacers < ActiveRecord::Migration[7.1]
  def change
    create_table :racers do |t|
      t.references :sailor, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
