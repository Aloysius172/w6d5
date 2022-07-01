# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

alo = Cat.create!(birth_date: '1997/25/02' , color:'brown' , name:'alo' , sex:'M' , description:'Nice cat')
andy = Cat.create!(birth_date:'1997/26/11' , color:'brown' , name:'andy' , sex:'M' , description:'Cool cat')