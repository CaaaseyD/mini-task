class AddValueToGoals < ActiveRecord::Migration[7.0]
  def change
    change_column :goals, :complete, :boolean, default: false
    change_column :todos, :complete, :boolean, default: false
  end
end
