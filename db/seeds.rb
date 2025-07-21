# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Breed.delete_all
DogSize.delete_all

#  создание инстансов DogSize
images_path = Rails.root.join("db/seeds/images")
giant, big, medium, small = DogSize.create!([
  { size: "Giant" },
  { size: "Big" },
  { size: "Medium" },
  { size: "Small" }
])

giant.image.attach(io: File.open(images_path.join("giant_size.png")), filename: "giant_size.png")
big.image.attach(io: File.open(images_path.join("big_size.jpeg")), filename: "big_size.jpeg")
medium.image.attach(io: File.open(images_path.join("medium_size.jpg")), filename: "medium_size.jpg")
small.image.attach(io: File.open(images_path.join("small_size.jpeg")), filename: "small_size.jpeg")

#  создание инстансов и привязка Breed
alabai = Breed.create!(name: "Alabai", dog_size: giant)
alabai.image.attach(io: File.open("db/seeds/images/alabai.jpg"), filename: "taksa.jpg")

basenji = Breed.create!(name: "Basenji", dog_size: small)
basenji.image.attach(io: File.open("db/seeds/images/Basenji.jpg"), filename: "taksa.jpg")

cane_corso = Breed.create!(name: "Cane Corso", dog_size: big)
cane_corso.image.attach(io: File.open("db/seeds/images/CaneCorso.jpg"), filename: "taksa.jpg")

labradoodle = Breed.create!(name: "Labradoodle", dog_size: medium)
labradoodle.image.attach(io: File.open("db/seeds/images/labradoodle.jpg"), filename: "taksa.jpg")

ridgeback = Breed.create!(name: "Ridgeback", dog_size: big)
ridgeback.image.attach(io: File.open("db/seeds/images/Ridgeback.jpg"), filename: "taksa.jpg")

saint_bernard = Breed.create!(name: "Saint Bernard", dog_size: giant)
saint_bernard.image.attach(io: File.open("db/seeds/images/SaintBernard.jpeg"), filename: "taksa.jpg")

shar_pei = Breed.create!(name: "Shar Pei", dog_size: medium)
shar_pei.image.attach(io: File.open("db/seeds/images/SharPei.jpeg"), filename: "taksa.jpg")

taksa = Breed.create!(name: "Taksa", dog_size: small)
taksa.image.attach(io: File.open("db/seeds/images/taksa.jpg"), filename: "taksa.jpg")
