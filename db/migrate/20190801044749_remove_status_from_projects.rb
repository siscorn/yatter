class RemoveStatusFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_reference :projects, :status
  end
end
