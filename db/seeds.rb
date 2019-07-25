# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Student.destroy.all

i1 = Instructor.create(name: "Kyle")
i2 =Instructor.create(name: "Jack")


Student.create(name: "Syed", major: "Chemistry", age: 25, instructor_id: i1.id )
Student.create(name: "Jake", major: "Chemistry", age: 22, instructor_id: i2.id )
Student.create(name: "Aaron", major: "Biology", age: 20, instructor_id: i1.id )
Student.create(name: "Carlos", major: "Biology", age: 20, instructor_id: i2.id )




