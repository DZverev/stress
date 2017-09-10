module Articles
  class AuthorsController < ApplicationController
    def index
      article = Article.find(params[:article_id])
      authors = article.authors
                       .order(articles_count: :desc)
                       .pluck(:first_name, :last_name)
                       .map { |name| name.join(' ') }
      render json: { authors: authors }
    end
  end
end
