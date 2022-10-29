# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start Seeding ..."
Store.create!([
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
    image: "https://images.unsplash.com/photo-1617571607645-dd7dd3bf7f6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80",
    product_id: "Circular Saw",
    description: "A power-saw using a toothed blade to cut different materials using a rotary motion spinning around an arbor.",
    
  },
  {
    image: "https://plus.unsplash.com/premium_photo-1663045230418-b3150d525a12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80",
    product_id: "Jig Saw",
    description: "A power saw which uses a reciprocating blade to cut irregular curves, such as stenciled designs, in wood, metal, or other materials. ",
    
  },
  {
    image: "https://images.unsplash.com/photo-1560846389-956694677531?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2F3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    product_id: "Table Saw",
    description: "A tool, consisting of a circular saw blade, mounted on an arbor, that is driven by an electric motor. The blade protrudes to provide support for the material.",
    
  },
  {
    image: "https://images.unsplash.com/photo-1619759247378-6a73e3ad45f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2671&q=80",
    product_id: "Panel Saw",
    description: "Horizontal large table saw machine with a sliding feed table that pushes the material through the blade. used to cut sheets of materials to size",
    
  },
  {
    image: "https://images.unsplash.com/photo-1581788604067-769a11325b0d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80",
    product_id: "Chain Saw",
    description: "A portable gasoline-, electric-, or battery-powered saw that cuts with a set of teeth attached to a rotating chain driven along a guide bar.",
    
  },
  {
    image: "https://images.unsplash.com/photo-1594320990326-398050e0f31a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1760&q=80",
    product_id: "Miter Saw",
    description: "A portable gasoline-, electric-, or battery-powered saw that cuts with a set of teeth attached to a rotating chain driven along a guide bar.",
    
  },
  {
    image: "https://images.unsplash.com/photo-1615974679960-414c1c7f08ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1760&q=80",
    product_id: "Track Saw",
    description: "A circular saw which can plunge into the material to a predetermined depth during the cut. The depth-of-cut is not fixed and can be adjusted.",
    
  },
  {
    image: "https://plus.unsplash.com/premium_photo-1661956403492-84f33a9b809d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHNhd3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
    product_id: "Chop Saw",
    description: "Automated saw for tree de-barking",
    
  },
  {
    image: "https://images.unsplash.com/photo-1659147922585-fd07e0d5e9ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80",
    product_id: "Belt Sander",
    description: "An electric motor that turns a pair of drums on which a continuous loop of sandpaper is mounted.can be used to sand edges of boards",
    
  },
  {
    image: "https://images.unsplash.com/photo-1572981779307-38b8cabb2407?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2832&q=80",
    product_id: "Impact Drill",
    description: "A type of rotary drill with an impact mechanism that generates a hammering motion in rapid succession thrusts to pulverize the material to be bored, so as to provide quicker drilling with less effort.",
    
  }
])

Store.all.each do |store|
  rand(1..4).times do

    # get a random product
    product = Product.find(Product.pluck(:id).sample)

    Store.create!(store_id: store.id, product_id: product.id, image: image, price: rand(100..250))
  end
end

puts "End Seeding...."