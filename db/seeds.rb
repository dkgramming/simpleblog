# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: 'Hello Blue Apron!', text: 'This is a seeded post...')
Post.create(title: 'Hello World!', text: 'This is also a seeded post...')
