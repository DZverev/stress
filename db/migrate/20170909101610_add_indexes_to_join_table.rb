class AddIndexesToJoinTable < ActiveRecord::Migration
  def change
    add_index :articles_authors, :article_id
    add_index :articles_authors, :author_id
  end
end
