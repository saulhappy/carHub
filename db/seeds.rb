# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Vinny Stilts", password: "123")
User.create(name: "Saul", password: "123")
User.create(name: "Patrick", password: "123")
User.create(name: "Karen", password: "123")

Car.create(name: "Lily", make: "Saab", model: "900", year: 1986, mileage: 300000, color: "red", description: "beautiful", is_gen_car: false)
Car.create(name: "Jessy", make: "Lotus", model: "Esprit", year: 1994, mileage: 21000, color: "white", description: "sexy", is_gen_car: false)
Car.create(name: "Monica",make: "Tesla", model: "Y", year: 2021, mileage: 86, color: "white", description: "amazing", is_gen_car: false)
Car.create(name: "Sassy", make: "Hyundai", model: "Elantra", year: 2018, mileage: 28000, color: "silver", description: "meh", is_gen_car: false)
Car.create(name: "Liz", make: "Toyota", model: "Previa", year: 1993, mileage: 60000, color: "purple", description: "sure why not", is_gen_car: false)

UserCar.create(user_id: 1, car_id: 1)
UserCar.create(user_id: 1, car_id: 2)
UserCar.create(user_id: 2, car_id: 3)
UserCar.create(user_id: 3, car_id: 4)
UserCar.create(user_id: 4, car_id: 5)

Family.create(family_name: "Marks", user_id: 1)
Family.create(family_name: "Marks", user_id: 4)

MaintRecord.create(car_id: 1, record_img:"https://images.app.goo.gl/iGPEzoPAuzDjEZpG6")
MaintRecord.create(car_id: 3, record_img:"https://images.app.goo.gl/EZAALfWGgvba1pWK9")


