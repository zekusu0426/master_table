# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.transaction do |u|
  3.times do |i|
    User.create(emp_id: i,
                name: Faker::Name.name,
                birthday: Faker::Date.between(20000.days.ago, 7500.days.ago),
                phone1: Faker::PhoneNumber.phone_number.gsub(".","/"),
                phone2: Faker::PhoneNumber.phone_number.gsub(".","/"),
                post_number: rand(100..999).to_s + "-" + rand(1000..9999).to_s,
                address: Faker::Address.city
                )
  end
end