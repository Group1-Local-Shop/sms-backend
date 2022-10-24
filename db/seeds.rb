# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 puts "Start seedng data "

 puts "create users  🧑‍🤝‍🧑"
 u1 = User.create(name: ""

 puts "create products 🍚"
p1 = Product.create(
    name: "Sugar",
    payment_status: true ,
    no_of_received_item: 30, 
    no_of_product_in_stock: 20,
    buying_price: 120,
    selling_price: 140, 
    no_of_spoiled_item:10
)
p2 = Product.create(
    name: "Salt"
    payment_status: false,
    no_of_received_item: 50, 
    no_of_product_in_stock: 45,
    buying_price: 18,
    selling_price:25, 
    no_of_spoiled_item: 5
)
p3 = Product.create(
    name: "Rice",
    payment_status: false ,
    no_of_received_item: 90, 
    no_of_product_in_stock:70,
    buying_price: 150,
    selling_price:185, 
    no_of_spoiled_item: 20
)
p4 = Product.create(
    name: "Bread",
    payment_status: true ,
    no_of_received_item: 50, 
    no_of_product_in_stock:48,
    buying_price:52,
    selling_price:60, 
    no_of_spoiled_item: 2
)
p5 = Product.create(
    name: "Bar soap"
    payment_status: false,
    no_of_received_item: 60, 
    no_of_product_in_stock: 60,
    buying_price: 165,
    selling_price: 185, 
    no_of_spoiled_item: 0
)
p6 = Product.create(
    name: "Unga"
    payment_status: false,
    no_of_received_item: 100, 
    no_of_product_in_stock: 93,
    buying_price: 150,
    selling_price: 215, 
    no_of_spoiled_item: 7
)
p7 = Product.create(
    name: "Cooking oil"
    payment_status: true,
    no_of_received_item: 40, 
    no_of_product_in_stock: 40,
    buying_price:340,
    selling_price: 400, 
    no_of_spoiled_item:0
)
p8 = Product.create(
    name: "Toilet paper"
    payment_status: false,
    no_of_received_item: 150, 
    no_of_product_in_stock: 150,
    buying_price: 50,
    selling_price:55, 
    no_of_spoiled_item: 0
)
p9 = Product.create(
    name: "Soda",
    payment_status: true,
    no_of_received_item: 140, 
    no_of_product_in_stock:140 ,
    buying_price: 200,
    selling_price:250, 
    no_of_spoiled_item: 0
)
p10 = Product.create(
    name: "Eggs",
    payment_status: true,
    no_of_received_item: 55, 
    no_of_product_in_stock:50,
    buying_price:12,
    selling_price:15, 
    no_of_spoiled_item:5
)



 puts "create Stores 🏪"

 s1 = Store.create(
    merchant_id: u1.id
    admin_id: u2.id

 )


 puts "create supply_requests 📓"
 sr1 = SupplyRequest.create(
    product_id: p2.id,
    admin_id: u2.id,
    clark_id: u3.id

 )
 sr1 = SupplyRequest.create(
    product_id: p5.id,
    admin_id: u2.id,
    clark_id: u3.id

 )



 puts "stop seeding data"