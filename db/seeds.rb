# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
10.times do |blog|
  Blog.create!(
    title:"My Blog Post #{blog}",
    body: "my seed description #{blog}"
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

9.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio}",
    subtitle: "My great service",
    body: "body",
    thumbnail_image: "http://placehold.it/350x200.jpg",
    main_image: "http://placehold.it/600x400.jpg"
  )
end

