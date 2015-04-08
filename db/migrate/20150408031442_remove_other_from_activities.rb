class RemoveOtherFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :other, :boolean
  end
end
