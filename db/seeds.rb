# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.delete_all 
Member.delete_all

Project.create(name:"Cubicle",deadline:"Jan 1st, 2021")
Project.create(name:"Project Ava",deadline:"Jun 23, 2021")


15.times do 
  Member.create(name:Faker::Name.unique.name,image_url:Faker::Avatar.unique.image,role:Faker::Job.unique.title)
end