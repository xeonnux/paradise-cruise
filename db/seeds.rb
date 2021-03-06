
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
User.destroy_all
Cruise.destroy_all
 puts 'Creating 5 fake users...'
 5.times do
   users = User.new(
    username: Faker::Name.unique.name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    password: Faker::Internet.password(min_length: 8),
    is_owner: false
   )
   users.save!
 end
 puts 'Finished creating users!'

 puts 'Creating 2 fake owners...'

    owner1 = User.new(
    username: Faker::Name.unique.name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    password: Faker::Internet.password(min_length: 8),
    is_owner: true
   )
   owner1.save!
 
   owner2 = User.new(
    username: Faker::Name.unique.name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    password: Faker::Internet.password(min_length: 8),
    is_owner: true
   )
   owner2.save!
 puts 'Finished creating owners!'
 
 
 puts "Creating cruise..."
 gabriel_island_cruise = 
   { name: "Gabriel Island Cruise", 
     user: owner2,
     description: "The 45 feet catamaran is very spacious and departs from the Grand Bay. To lift the spirits of all people on board, the crew will play local Mauritian music.",
     duration_of_cruise: "1.5 hours ",
     capacity:20,
     extra_offers:"snorkelling",
     cancellation_policy:"no refund ",
     location:"port louis",
     price:1199,
     image_url:"https://media-cdn.tripadvisor.com/media/photo-s/05/f6/2a/c5/catamaran-cruises-mauritius.jpg"
    }

 catamaran_sunset_cruise =
   { name: "Catamaran Sunset Cruise", 
      user: owner1,
      description: "The excursion starts at 8:30AM before the other boats from Pointe Jerome embarkation point in Mahebourg. First stop will be a beautiful snorkeling session in the crystal clear water of Pointe Jerome to put you in the mood.Later on, the boat will bring you to the famous Ile aux Phare where you will be able to take beautiful pictures in the ruins. This hilly & rocky island, also known by the name of Ile aux Fouquets, is indeed one of the first islets to be discovered by the Dutch back in 1598. On the way, we will stop at Grande Riviere Sud Est waterfall that we will be able to observe from the boat. The faune and flora is waiting for you; bats and monkeys are in the trees.",
      duration_of_cruise:"7 hours" ,
      capacity: 14,
      extra_offers:"scuba-diving",
      cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
      location:"Pointe Jerome",
      price:2358,
      image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1627993840/cruise/spirit-of-mauritius-1080x1080_qkxce0.jpg"

    }
 
    flat_island_cruise =
 { name: "Flat Island Cruise", 
    user: owner1,
    description: "For a day full of drinks, fun and enjoyment, a trip to Flat Island is an appropriate one.  This will include an unforgettable cruise as you sail on your private luxury cruise. As the catamaran departs at 9:00 AM from Grand Bay, you will be served breakfast a little later. The breakfast includes coffee, tea, juice, croissant and chocolate bread. You will have to sail around for one and a half hour before reaching Flat Island.",
    duration_of_cruise: "7 hours 30 minutes",
    capacity:10,
    extra_offers:"exploring our special designated attraction spots",
    cancellation_policy:"3 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
    location:"Grand Bay",
    price: 1599,
    image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1628074128/cruise/IMG_1555-scaled_obvotj.jpg"
  }

    cruise4 =
  { name: "Ile de la Passe Cruise ", 
    user: owner1,
    description: "Experience a full day cruise filled with tropical warmth, drinks, delicious food and loads of fun aboard the luxury Catamaran gliding along the South-East Coast of Mauritius! Enjoy a relaxing day on a premium Catamaran while cruising to the beautiful Ile aux Cerfs Island, guided by the South-East Trade Winds!",
    duration_of_cruise:"6 hours" ,
    capacity: 20,
    extra_offers:"full open bar service for free",
    cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
    location:"flic en flac",
    price:3500,
    image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1628156894/cruise/overnight-catamaran-cruises-mauritius_1_dc9mg7.jpg"   
   }

    cruise5 =
{ name: "Catamaran dolphin cruise", 
   user: owner2,
   description: "As part of this cruise tour you will discover the dolphins of Tamarin bay, visit the famous Crystal rock which stands out in the middle of the lagoon, and stay on Benitiers Island for relaxation on its beautiful sandy beaches.",
   duration_of_cruise: "8 hours 30 minutes",
   capacity:10,
   extra_offers:"swimming with dolphins",
   cancellation_policy:"3 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
   location:"Tamarin bay area",
   price: 1999,
   image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1627993841/cruise/travel_sea_france_mar_reisen_frankreich_meer_mare-833664_v7giv1.jpg"
 }

    cruise6 =
  { name: "Paradise cruise", 
    user: owner1,
    description: "Treat yourself to a memorable day of exhilarating sail on a beautiful 45 foot catamaran to Ile aux cerfs ??? this will definitely be one of the highlights of your holidays in Mauritius.The excursion starts at 8:30AM before the other boats from Pointe Jerome embarkation point in Mahebourg. First stop will be a beautiful snorkeling session in the crystal clear water of Pointe Jerome to put you in the mood.Later on, the boat will bring you to the famous Ile aux Phare where you will be able to take beautiful pictures in the ruins. This hilly & rocky island, also known by the name of Ile aux Fouquets, is indeed one of the first islets to be discovered by the Dutch back in 1598. On the way, we will stop at Grande Riviere Sud Est waterfall that we will be able to observe from the boat. The faune and flora is waiting for you; bats and monkeys are in the trees.",
    duration_of_cruise:"7 hours" ,
    capacity: 25,
    extra_offers:"scuba-diving, whale watching",
    cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
    location:"Pointe Jerome",
    price:3500,
    image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1628063048/cruise/cd44f8_335208e3e09143f5884895b040102421_mv2_d_5568_3712_s_4_2_mbo8ma.webp"
    }

    cruise7 = 
    { name: "Saint Brandon Cruise", 
      user: owner2,
      description: "A people with an unparalleled cultural wealth, a history that links all communities, white sandy beaches as far as the eye can see, a lagoon with many treasures, islands dotted with wild and preserved nature??? These are the jewels of Mauritius. Want to immerse yourself in the culture of this multifaceted country? This dream is within reach. Discover St Brandon and its islets scattered north of Mauritius.",
      duration_of_cruise: "11 hours ",
      capacity:25,
      extra_offers:"fishing",
      cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
      location:"Mahebourgh",
      price:75000,
      image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa2EwZCWdo21mIMigbMVtrLP-OryV3ZDT_8-K6LZ_cndT64ZqhttGpTeweihGVgRRCRCY&usqp=CAU"
     }
 
     cruise8  =
    { name: "Catamaran Maritime Cruise", 
       user: owner1,
       description: "The east coast features a long stretch of beautiful sandy beaches, but it is also the windiest part of the island, especially in winter. One of the most popular beaches, Belle Mare, is also one of the longest beaches on the island. Ile aux Cerfs, an isle set in the lagoon a few minutes by boat from the coast, is one of the most visited sites by tourists. You can organise a day on the island at your hotel or directly on site, with local operators.",
       duration_of_cruise:"6 hours" ,
       capacity: 15,
       extra_offers:"sunset diving",
       cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
       location:"Albion",
       price:3000,
       image_url:"https://images.myguide-cdn.com/mauritius/companies/private-catamaran-cruise-to-ile-aux-cerfs/large/private-catamaran-cruise-to-ile-aux-cerfs-606917.png"
 
     }
  
     cruise9 =
  { name: "Wild South Cruise", 
     user: owner1,
     description: "For a day full of drinks, fun and enjoyment, a trip to the southern Island is a must.  This will include an unforgettable cruise as you sail on your private luxury cruise. As the catamaran departs at 9:00 AM from Grand Bay, you will be served breakfast a little later. The breakfast includes coffee, tea, juice, croissant and chocolate bread. You will have to sail around for one and a half hour before reaching Flat Island.",
     duration_of_cruise: "7 hours 30 minutes",
     capacity:10,
     extra_offers:"exploring our special designated attraction spots",
     cancellation_policy:"3 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
     location:"Aux bout du monde",
     price: 1599,
     image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1627993836/cruise/84-escobar-boat-yacht-sea-travel_nvhtho.jpg"
   }
 
     cruise10 =
   { name: "Ile aux Aigrettes Cruise ", 
     user: owner1,
     description: "Experience a full day cruise filled with tropical warmth, drinks, delicious food and loads of fun aboard the luxury Catamaran gliding along the South-East Coast of Mauritius! Enjoy a relaxing day on a premium Catamaran while cruising to the beautiful Ile aux Cerfs Island, guided by the South-East Trade Winds!",
     duration_of_cruise:"6 hours" ,
     capacity: 20,
     extra_offers:"full open bar servicewith sega for free",
     cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
     location:"flic en flac",
     price:3500,
     image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1627993835/cruise/boat-in-paradise-wallpaper-preview_ksz69t.jpg"   
    }
 
     cruise11 =
 { name: "Catamaran Whale cruise", 
    user: owner2,
    description: "As part of this cruise tour you will discover the whales of Tamarin bay, visit the famous Crystal rock which stands out in the middle of the lagoon, and stay on Benitiers Island for relaxation on its beautiful sandy beaches.",
    duration_of_cruise: "8 hours 30 minutes",
    capacity:10,
    extra_offers:"swimming with whales",
    cancellation_policy:"3 days before it starts for a 70% refund, with no refunds after that the service fee is non-refundable.",
    location:"Tamarin bay area",
    price: 1999,
    image_url:"https://res.cloudinary.com/cruise-paradise/image/upload/v1627993841/cruise/travel_sea_france_mar_reisen_frankreich_meer_mare-833664_v7giv1.jpg"
  }
 
     cruise12 =
   { name: "Tempete cruise", 
     user: owner1,
     description: "A memorable day of exhilarating sail on a beautiful 45 foot catamaran with exciting moments ??? this will definitely be one of the highlights of your holidays in Mauritius.The excursion starts at 8:30AM before the other boats from Pointe Jerome embarkation point in Mahebourg. First stop will be a beautiful snorkeling session in the crystal clear water of Pointe Jerome to put you in the mood.Later on, the boat will bring you to the famous Ile aux Phare where you will be able to take beautiful pictures in the ruins. This hilly & rocky island, also known by the name of Ile aux Fouquets, is indeed one of the first islets to be discovered by the Dutch back in 1598. On the way, we will stop at Grande Riviere Sud Est waterfall that we will be able to observe from the boat. The faune and flora is waiting for you; bats and monkeys are in the trees.",
     duration_of_cruise:"5 hours" ,
     capacity: 15,
     extra_offers:"scuba-diving, whale watching",
     cancellation_policy:"5 days before it starts for a 50% refund, with no refunds after that the service fee is non-refundable.",
     location:"Pointe Jerome",
     price:3500,
     image_url:"https://yachtharbour.com/static/uploads/2917_657d9.jpg"
     }

 [ gabriel_island_cruise, catamaran_sunset_cruise, flat_island_cruise,cruise4, cruise5, cruise6,cruise7,cruise8,cruise9,cruise10,cruise11,cruise12 ].each do |attributes|
   cruise = Cruise.create!(attributes)
   puts "Created #{cruise.name}"
 end
 puts "Finished creating cruise!"
