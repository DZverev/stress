# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'Generate authors'
10000.times do |i|
  Author.generate
  puts "Done #{i}" if i % 1000 == 0
end

puts 'Generate articles'
10000.times do |i|
  Article.generate
  puts "Done #{i}" if i % 1000 == 0
end

puts 'Generate relations'
author_ids = Author.pluck(:id)
article_ids = Article.pluck(:id)
article_ids.each do |article_id|
  a_ids = author_ids.sample( rand(5) + 1 )
  a_ids.each do |a_id|
    ArticleAuthor.create author_id: a_id, article_id: article_id
  end
end

puts 'Done'