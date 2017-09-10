class AddArticlesCountToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :articles_count, :integer
  end
end
