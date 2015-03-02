# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "test@gmail.com", password: "12345678" , password_confirmation: "12345678", created_at: "2015-24-2", firstname: "test", lastname: "tester", admin: false)
User.create(email: "test@test.com", password: "12345678" , password_confirmation: "12345678", created_at: "2015-24-2", firstname: "edward", lastname: "guevara", admin: false)
User.create(email: "admin@admin.com", password: "12345678" , password_confirmation: "12345678", created_at: "2015-24-2", firstname: "Admin", lastname: "Woyciechowsky", admin: true)
Category.create(id: 1, name: "Programming")
Product.create(title: "test's Product", description: "Lorem Ipsum to jest opis produktu 1", price: 50.00, category_id: 1, user_id: 1)
Product.create(title: "edward's Product", description: "Lorem Ipsum to jest opis produktu 2", price: 23.00, category_id: 1, user_id: 2)
Product.create(title: "Admin's Product", description: "Lorem Ipsum to jest opis produktu 3", price: 49.00, category_id: 1, user_id: 3)
Review.create(content: "Awesome product", rating: 5, product_id: 1, user_id: 2)
Review.create(content: "very good!", rating: 2, product_id: 1, user_id: 1)
Review.create(content: "to bad", rating: 4, product_id: 2, user_id: 3)