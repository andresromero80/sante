# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create Classifications
  prev_class = Classification.create!(name: "Préventive")
  cur_class = Classification.create!(name: "Curative")

 #Create Symptoms
  burn = Symptom.create!(name: "Brûlures")
  liver = Symptom.create!(name: "Foie(nettoyage)")

 #Create Treatments 
  types = ["Plantes", "Comportement", "Alimentation", "Remède externe"]

  plantain = Treatment.create!(name: "Plantain", description: "(cataplasme) : cicatrisation", type_t: types[3])
  aloe = Treatment.create!(name: "Aloé vera", type_t: types[0])

  concombre = Treatment.create!(name: "Concombre", type_t: types[0])

 #Relation Cassification - Symptoms
  burn.classifications << cur_class
  liver.classifications << prev_class

  #Relation Symptoms - Treatments
  burn.treatments << plantain
  burn.treatments << aloe

  liver.treatments << concombre