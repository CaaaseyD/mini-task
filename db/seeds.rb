# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
Goal.destroy_all
Todo.destroy_all

#create 1 admin and 10 random users
User.create({username: "admin", email: "admin@caseydai.me", password: "password"})
10.times do
  User.create({username: Faker::Internet.username, email: Faker::Internet.safe_email, password: "password"})
end

#create 3-5 tasks for each user
Goal.create({title: Faker::Hobby.activity, description:Faker::Marketing.buzzwords, deadline: Faker::Time.between(from: DateTime.now - 30, to: DateTime.now + 30), public: [true, false].sample, complete: [true, false].sample})
