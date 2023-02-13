class AddPublicToGoals < ActiveRecord::Migration[7.0]
  def change
    add_column :goals, :public, :boolean, default: false
  end
end
