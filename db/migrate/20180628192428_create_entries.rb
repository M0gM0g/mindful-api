class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :thought
      t.string :distortion
      t.string :response
      t.date :date

      t.timestamps
    end
  end
end
