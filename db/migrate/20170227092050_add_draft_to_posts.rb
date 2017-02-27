class AddDraftToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :draft, :boolean
  end
end
