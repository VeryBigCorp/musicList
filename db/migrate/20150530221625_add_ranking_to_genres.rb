class AddRankingToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :ranking, :integer
  end
end
