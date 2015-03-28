class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :sets
      t.integer :repetition
      t.boolean :other
      t.string :name

      t.timestamps null: false
    end
  end
end
