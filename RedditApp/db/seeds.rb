# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Sub.destroy_all
Post.destroy_all

a = User.create!(username: "user", password: "starwars")
b = User.create!(username: "robby", password: "password")
c = User.create!(username: "spencer", password: "password")

#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string           not null
#  user_id     :integer          not null

d = Sub.create!(title: "Cats", description: "For cats everywhere", user_id: a.id)
e = Sub.create!(title: "Apple", description: "For apples everywhere", user_id: a.id)
f = Sub.create!(title: "Pickles", description: "For pickles everywhere", user_id: b.id)

#  title      :string           not null
#  url        :string           not null
#  content    :text             not null
#  sub_id     :integer          not null
#  user_id    :integer          not null

g = Post.create!(title: "Catnip is bad", url: "catnip.com", content: "Catnip is toxic", sub_id: d.id, user_id: a.id)
g = Post.create!(title: "Wheels", url: "wheel.com", content: "Wheels can spin", sub_id: d.id, user_id: c.id)
g = Post.create!(title: "Reddit socks", url: "socks.com", content: "Reddit is toxic", sub_id: e.id, user_id: a.id)