class CreateRecentSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :recent_searches do |t|
      t.string :query
    end
  end
end
