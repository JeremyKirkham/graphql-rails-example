# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
author = Author.create(first_name: "Jeremy", last_name: "Kirkham")
author.posts.create(
  type: "Blogpost",
  title: "My first blogpost",
  body: "The body of my first blogpost looks like this."
)

author.posts.create(
  type: "Announcement",
  title: "My first announcement",
  subject: "GraphQL in Rails"
)
