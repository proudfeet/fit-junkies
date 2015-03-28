class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :sets
      t.string :repetition
      t.boolean :other

      t.timestamps null: false
    end
  end
end
