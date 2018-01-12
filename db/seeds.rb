# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  repair = RepairOrder.create([
    {VIN: '123'},
    {year: 2003},
    {make: "Land Rover"},
    {model: "Discovery"},
    {trim: "SE"},
    {miles: 1},
    {color: "Black"},
    {window_tag: "123"},
    {line: "It won't start"},
    {due_date: 01/02/18},
    {update_time: 01/03/18}

    ])
