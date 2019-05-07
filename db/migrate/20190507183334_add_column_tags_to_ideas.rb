class AddColumnTagsToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :tags, :string
  end
end
