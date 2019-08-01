class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :owner
      t.string :title
      t.integer :cheered_count
      t.references :status, index: true

      t.timestamps
    end
  end
end
