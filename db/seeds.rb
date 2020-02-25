# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

User.destroy_all
Category.destroy_all
Tag.destroy_all

cat = %W(Abstract Animal Colors Floral Geometry Illustration Kids Monochrome Placement)
tags = %W(homedesign branding photooftheday like m instagram bhfyp designinspiration beautiful digitalart lifestyle vintage sketch graphic arte photoshop marketing architect modern arquitetura wood painting follow illustrator picoftheday beauty archilovers construction nature madeinitaly)


2.times do
  n = Faker::Name.first_name
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, email:"#{n.downcase}@web.com", password:"123456")
end

2.times do
  n = Faker::Name.first_name
  cn = Faker::Company.name
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, email:"#{n.downcase}@web.com", password:"123456", company: true, company_name: cn, website: "www.#{cn}.com")
end

cat.each do |c|
  Category.create(name: c)
end

tags.each do |t|
  Tag.create(name: t)
end

20.times do
  cats_d = Category.all.sample((1..3).to_a.sample)
  tags_d = Tag.all.sample((1..5).to_a.sample)
  user_d = User.where('company = ?', false).sample
  n = Faker::Beer.brand
  d = Design.new(name: n, file_type: %w(psd ai).sample, pattern: ['seamless tile', 'placement'].sample, price: (200..400).to_a.sample)
  cats_d.each do |c|
    d.categories << c
  end
  tags_d.each do |t|
    d.tags << t
  end
  url = "https://source.unsplash.com/collection/1352185/#{(1..1000).to_a.sample}"
  file = URI.open(url)
  d.photo.attach(io: file, filename: "#{n}.jpg", content_type: 'image/png')
  d.user = user_d
  d.save
end

# file = URI.open('https://images.unsplash.com/photo-1565373987291-4d7424dd9e59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=526&q=80')
# d = Design.new({ name: 'poteto', file_type:"psd", pattern:"placement", price:1 })
# c = Category.create(name: 'Abstract')
# d.categories << c
# t = Tag.create(name: 'about')
# d.tags << t
# user1 = User.new({ first_name: "Sam", last_name: "El", address:"nfenoe", phone_number: "123", email:"sam@web.com", password:"123456" })
# user1.save
# d.user = user1
# d.photo.attach(io: file, filename: 'first.jpg', content_type: 'image/png')
# d.save
