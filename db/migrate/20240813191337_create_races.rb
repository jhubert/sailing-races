class CreateRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :races do |t|
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :location

      t.timestamps
    end
  end
end
