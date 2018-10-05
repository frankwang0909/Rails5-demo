# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
# ...
Product.create!(title: 'Seven Mobile Apps in Seven Weeks',
  description:
    %{<p>
      <em>Native Apps, Multiple Platforms</em> 
      Answer the question "Can we build this for ALl the devices?" with a resounding YES. 
      This book will help you get there with a real-world introduction to seven platforms, 
      whether you're new to mobile or an experienced developer needing to expand your options. 
      </p>},
  image_url: '7apps.jpg',
  price: 26.00
)
# ...