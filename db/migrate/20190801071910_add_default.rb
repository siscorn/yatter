class AddDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :cheered_count, :integer, :default => 0
    change_column :projects, :project_status_id, :integer, :default => 1
  end
end
