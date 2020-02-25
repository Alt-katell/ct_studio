# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

cat = %W(Abstract Animal Colors Floral Geometry Illustration Kids Monochrome Placement)
tags = %W(homedesign branding photooftheday like m instagram bhfyp designinspiration beautiful digitalart lifestyle vintage sketch graphic arte photoshop marketing architect modern arquitetura wood painting follow illustrator picoftheday beauty archilovers construction nature madeinitaly)
url = "https://source.unsplash.com/collection/1352185/#{(1..1000).to_a.sample}"

2.time do
  User.create(first_name: "Sam", last_name: "El", address:"nfenoe", phone_number: "123", email:"sam@web.com", password:"123456")
end

2.times do
  User.create(first_name: "Sam", last_name: "El", address:"nfenoe", phone_number: "123", email:"sam@web.com", password:"123456", company: true, company_name: , website: )
end



file = URI.open('https://images.unsplash.com/photo-1565373987291-4d7424dd9e59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=526&q=80')
d = Design.new({ name: 'poteto', file_type:"psd", pattern:"placement", price:1 })
c = Category.create(name: 'Abstract')
d.categories << c
t = Tag.create(name: 'about')
d.tags << t
user1 = User.new({ first_name: "Sam", last_name: "El", address:"nfenoe", phone_number: "123", email:"sam@web.com", password:"123456" })
user1.save
d.user = user1
d.photo.attach(io: file, filename: 'first.jpg', content_type: 'image/png')
d.save
