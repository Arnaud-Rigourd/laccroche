class AddColumnsToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :title, :string
    add_column :projects, :description, :text
    add_column :projects, :category, :string
    add_column :projects, :collab, :string
    add_column :projects, :video_url, :string
    add_column :projects, :music_url, :string
    add_reference :projects, :user, null: false, foreign_key: true
  end
end
