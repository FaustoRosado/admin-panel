# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
education = ["Highschool Diploma", "Bachlor Degree", "Master's Degree", "Ph.D"]

100.times do |i|
  Student.create!(
    first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
      email: Faker::Internet.user_name + i.to_s + "@#{Faker::Internet.domain_name}", 
        username: "#{Faker::Internet.user_name}#{i}",
          age: Faker::Number.number(2),
            birthday: Faker::Date.birthday,
              education: "#{education[rand(0..3)]}"
                  )
         
  # print '.' if i % 1000 == 0
end
puts