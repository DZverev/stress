class CreateArticleAuthors < ActiveRecord::Migration
  def change
    create_table :article_authors do |t|
      t.references :article
      t.references :author
      t.timestamps
    end
  end
end
