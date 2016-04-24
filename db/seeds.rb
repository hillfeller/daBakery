# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# require 'csv'
# CSV.foreach(Rails.root.join("db/seeds_data/items.csv"), headers: true) do |row|
#   Item.find_or_create_by(title: row[0], price: row[1], amount: row[2], description: row[3], bread_url: row[4])
# end



50.times do
   Item.create!(
     title:   Faker::Lorem.characters(12),
     price:  Faker::Commerce.price,
     amount:  Faker::Number.digit,
     description: Faker::Lorem.sentence,
     bread_url: Faker::Placeholdit.image("50x50", 'jpg')
   )
 end

 items = Item.all

 puts "Seed finished"

 puts "#{Item.count} items created"
