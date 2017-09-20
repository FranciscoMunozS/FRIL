class AddFileToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :file, :string
  end
end
