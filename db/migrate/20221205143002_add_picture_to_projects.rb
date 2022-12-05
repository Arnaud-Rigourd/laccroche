class AddPictureToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :picture, :string
  end
end
