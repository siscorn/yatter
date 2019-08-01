class AddProjectStatusToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :project_status, foreign_key: true
  end
end
