# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Matias",last_name:"Canepa", email:"macanepa@miuandes.cl",phone:"+56 9 92781334", password:"wiwi",address:"Camino Las Hualtatas 5200 03")
User.create(name:"Lucho",last_name:"Figaro", email:"lushito@miuandes.cl",phone:"+56 9 92784564", password:"wiwi",address:"Algañacos")
User.create(name:"Vicho",last_name:"Correa", email:"vicorrea@miuandes.cl",phone:"+56 9 4688434", password:"wiwi",address:"Los domingos")
User.create(name:"wawa",last_name:"iuh", email:"vicea@miuandes.cl",phone:"+56 9 46884554", password:"wiwi",address:"El ramo")
User.create(name:"wiwi",last_name:"hui", email:"vorriojoea@miuandes.cl",phone:"+56 9 46864684", password:"wiwi",address:"Las papayas")

Venue.create(name:"Movistar Arena", address:"Tupper 1941", capacity:1500000)
Venue.create(name:"La Shushi Arena", address:"foiwjfoier 1941", capacity:60000)
Venue.create(name:"Waka Arena", address:"Tuphgfd 1941", capacity:200000)

Event.create(name:"Evento",description:"Hello this is description", start_date:"29/03/2019",venue_id:1)
Event.create(name:"Concierto BKN",description:"weno de lo weno", start_date:"4/04/2019",venue_id:1)
Event.create(name:"Recital",description:"Papurri Papa", start_date:"06/05/2019",venue_id:1)

Order.create(total_amount:0,user_id:1)
Order.create(total_amount:0,user_id:2)
Order.create(total_amount:0,user_id:1)

Category.create(category_type:"Pacifico")
Category.create(category_type:"Andes")
Category.create(category_type:"Galeria")


Ticket.create(price:1100, category_id:1, event_id:1, order_id:1)
Ticket.create(price:2000, category_id:2, event_id:2, order_id:1)
Ticket.create(price:2500, category_id:3, event_id:3, order_id:1)

Ticket.create(price:1100, category_id:1, event_id:1, order_id:2)
Ticket.create(price:2000, category_id:2, event_id:1, order_id:2)
Ticket.create(price:2500, category_id:3, event_id:3, order_id:2)

Ticket.create(price:1100, category_id:1, event_id:1, order_id:3)
Ticket.create(price:2000, category_id:2, event_id:2, order_id:3)
Ticket.create(price:2500, category_id:3, event_id:3, order_id:3)


