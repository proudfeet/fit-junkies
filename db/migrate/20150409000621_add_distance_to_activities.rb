class AddDistanceToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :distance, :string
  end
end
