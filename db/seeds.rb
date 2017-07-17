# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating Forfaits...."
f = Forfait.new
f.title = "One page"
f.description = "Un site 1 page, idéal pour présenter votre concept ou promouvoir un lancement d'application"
f.price = 499
f.save
puts "another one..."
f = Forfait.new
f.title = "Multi pages"
f.description = "Site multi pages responsive design. Optimisé pour le référencement"
f.price = 1099
f.save
puts "another one......"
f = Forfait.new
f.title = "Premium"
f.description = "Site e-commerce avec haut niveau de finitions graphiques, intégration du catalogue"
f.price = 1499
f.save
puts "last one......"
f = Forfait.new
f.title = "Prototype&MVP"
f.description = "Prototype&MVP personnalisés parfait pour le développement de nouveaux business modèles et nouveaux produits."
f.price = 999
f.save
puts "Finishing"
