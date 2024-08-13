class CreateSailors < ActiveRecord::Migration[7.1]
  def change
    create_table :sailors do |t|
      t.string :name
      t.string :hometown
      t.string :sail_number

      t.timestamps
    end
  end
end
