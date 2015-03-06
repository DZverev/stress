class RenameArticleAuthors < ActiveRecord::Migration
  def change
    rename_table :article_authors, :articles_authors
  end
end
