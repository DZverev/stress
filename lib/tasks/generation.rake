namespace :generation do
  desc "Endless generation of content"
  task go: :environment do
    Author.find_each do |author|
      author.articles_count = author.articles.count
      author.save
    end
  end
end
