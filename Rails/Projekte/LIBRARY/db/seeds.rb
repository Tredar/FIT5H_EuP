# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author1 = Author.create(firstname: "Fabian", lastname: "Knoop")
Author2 = Author.create(firstname: "Christian", lastname: "Weikert")
Author3 = Author.create(firstname: "Tobias", lastname: "Gerhardt")
Author1.books.create(title: "The King Fabian", year: "2016-02-11", description: "Eins der besten Bücher ever")
Author1.books.create(title: "The King Fabian 2", year: "2017-02-11", description: "Das zweit beste Buch ever")
Author2.books.create(title: "Hallo ich bin Christian", year: "2015-05-21", description: "Christian redet über sein Leben")
Author2.books.create(title: "Das leben mit anderes", year: "2016-11-14", description: "Christian und andere Menschen")
Author3.books.create(title: "Der Schlauere ist halt einfach besser", year: "2016-07-21", description: "Tobi gibt sein Wissen von sich")
Author3.books.create(title: "Der Schlauere wird immer schlauer", year: "2017-01-27", description: "Tobi erzählt noch mehr von seinem Wissen")


