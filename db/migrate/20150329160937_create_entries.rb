class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :weight
      t.integer :thigh
      t.integer :waist
      t.integer :chest
      t.integer :upperarm
      t.text :notes

      t.timestamps null: false
    end
  end
end
