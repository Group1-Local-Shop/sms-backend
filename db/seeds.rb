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
    image: "https://images.unsplash.com/photo-1631856955350-77f4023dff2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fHRvb2xzJTIwc3RvcmV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
    stores_id: "Nairobi",
    address: "1234 Westview Bldg, Fedha Road, Westlands"
  },
  {
    image: "https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2304&q=80",
    stores_id: "Kisumu",
    address: "467 Mountain Mall, Main Street, Milimani"
  },
  {
    image: "https://images.unsplash.com/photo-1631856956771-bd96b2bd71f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fHRvb2xzJTIwc3RvcmV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
    stores_id: "Mombasa",
    address: "1559 Malindi Lane, Down Town, Nyali"
  },
  {
    image: "https://images.unsplash.com/photo-1601598838108-5019bf3ea4a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80",
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

