# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Categories
Category.create!(title: "Camera")
category2 = Category.create!(title: "Laptop")
category3 = Category.create!(title: "Desktop")
category4 = Category.create!(title: "Tablet")
category5 = Category.create!(title: "Mobile phone")
category6 = Category.create!(title: "Printer")

# Charity
charity1 = Charity.create!(name: "Refugee aid", website: "www.refugee-aid.org", whatsapp_number: "+44356712929")

#Users
user_1 = User.create!(email: "donator@mail.com", password: "123456" , first_name: "Nigel", last_name: "Lee", kind: "Donator", description: "", phone_number: "+441234120", contact_preference: "Either")

user_2 = User.create!(email: "seeker@mail.com", password: "123456" , first_name: "Amal", last_name: "Shaw", charity_id: charity1.id, kind: "Seeker", description: "Before she was forced to flee civil war in Sudan, Amal was studying to be lawyer. She needs to pass an advanced English exam to get into university, and needs a laptop for the same. Amal hopes she can continue her education here in Britain and someday be a successful lawyer.", phone_number: "+443339200")

user_3 = User.create!(email: "worker@mail.com", password: "123456" , first_name: "Sarah", last_name: "Parker", charity_id: charity1.id, kind: "Charity worker", description: "", phone_number: "+443428099")


#Products 
product1 = Product.create!(user_id: user_1.id, title: "Dell Laptop", description: " Dell Lauser_id: user_1.id, titude E7470 . This laptop is 14inches,  6th Gen with i5 processor. It has pre-installed Windows 10 operating system  and 8GB RAM.", status: "Pending", condition: "Used (fair)",category_id: category2.id, address: "Forset Court, Edgware Road, Hyde Park W2")
 
product2 = Product.create!(user_id: user_1.id, title: "Apple Laptop", description: " 13-inch MacBook Pro with Retina display . This Apple laptop is in excellent condition because I’ve been using 3 different laptops at the same time and I travel frequently(I don’t use laptop when I travel)", status: "Pending", condition: "Used (like new)",category_id: category2.id, address: "Stockwell Road, London SW9")

 
product3 = Product.create!(user_id: user_1.id, title: "Samsung Mobile", description: "Samsung Galaxy S9 Plus 64GB. This smartphone is sim-free and can be used on any network. The item is in pristine condition as I recieved it as a gift. Comes with the charger and usb cable. ", status: "Complete", condition: "New",category_id: category5.id, address: "King & Queen Wharf, Rotherhithe Street, London SE16")

 
product4 = Product.create!(user_id: user_1.id, title: "Apple iPad", description: "Apple ipad Air Space Gray ,iOS operating system WIFi , bluetooth and has a battery standby time of upto 710hr.",status: "Pending" , condition: "Used (fair)",category_id: category4.id, address: "Randolph Avenue, Maida Vale, London W9")

 
product5 = Product.create!(user_id: user_1.id, title: "Desktop", description: "HP Pavilion 24-xa Core i3 Windows 10 Desktop. The desktop is in pristine condition, brought for my son but was used only for a few months.", status: "Pending", condition: "Used (good)",category_id: category3.id, address: "Charteris Road, London NW6" )



#bookings
Booking.create!(charity_id: charity1.id, user_id: user_2.id, product_id: product3.id, status: "Complete")
Booking.create!(charity_id: charity1.id, user_id: user_2.id, product_id: product5.id, status: "Pending")

