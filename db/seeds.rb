# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start Seeding ..."
stores.create!([
  {
    image: "",
    stores_id: "Nairobi",
    address: "1234 Westview Bldg, Fedha Road, Westlands"
  },
  {
    image: "",
    stores_id: "Kisumu",
    address: "467 Mountain Mall, Main Street, Milimani"
  },
  {
    image: "",
    stores_id: "Mombasa",
    address: "1559 Malindi Lane, Down Town, Nyali"
  },
  {
    image: "",
    stores_id: "Eldoret",
    address: "13 Mountain Mall, Kipchoge Drv, Town Center"
  }

])


product.create!([
  {
    image: "",
    product_id: "Circular Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Jig Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Table Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Panel Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Reciprocating Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Miter Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Track Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Chop Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Band Saw",
    description: "",
    
  },
  {
    image: "",
    product_id: "Rip Saw",
    description: "",
    
  }
])


puts "End Seeding...."

