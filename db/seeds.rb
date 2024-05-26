# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

cliente1 = Customer.create!(
  name: "Carlos Áries SEED",
  social_security_number: "69727146058",
  email: "carlos_aries@cliente.com.seed",
  password: "cl13n73",
)
cliente2 = Customer.create!(
  name: "Carla Touro SEED",
  social_security_number: "94261448700",
  email: "carla_touro@cliente.com.seed",
  password: "cl13n73",
)
cliente3 = Customer.create!(
  name: "Carmem Gemeos SEED",
  social_security_number: "54800526590",
  email: "carmem_gemeos@cliente.com.seed",
  password: "cl13n73",
)
cliente4 = Customer.create!(
  name: "Caio Câncer SEED",
  social_security_number: "98337228733",
  email: "caio_cancer@cliente.com.seed",
  password: "cl13n73",
)
cliente5 = Customer.create!(
  name: "Célia Leão SEED",
  social_security_number: "01531718639",
  email: "celia_leao@cliente.com.seed",
  password: "cl13n73",
)
cliente6 = Customer.create!(
  name: "Clovis Virgem SEED",
  social_security_number: "61041784058",
  email: "clovis_virgem@cliente.com.seed",
  password: "cl13n73",
)
cliente7 = Customer.create!(
  name: "Claudio Libra SEED",
  social_security_number: "92697149856",
  email: "claudio_libra@cliente.com.seed",
  password: "cl13n73",
)
cliente8 = Customer.create!(
  name: "Cristiano Escorpião SEED",
  social_security_number: "92525068025",
  email: "cristiano_escorpiao@cliente.com.seed",
  password: "cl13n73",
)
cliente9 = Customer.create!(
  name: "Cecília Sagitário SEED",
  social_security_number: "61251339824",
  email: "cecilia_sagitario@cliente.com.seed",
  password: "cl13n73",
)
cliente10 = Customer.create!(
  name: "César Capricórnio SEED",
  social_security_number: "60638753015",
  email: "cesar_capricornio@cliente.com.seed",
  password: "cl13n73",
)
cliente11 = Customer.create!(
  name: "Charles Aquário SEED",
  social_security_number: "23866487703",
  email: "charles_aquario@cliente.com.seed",
  password: "cl13n73",
)
cliente12 = Customer.create!(
  name: "Camila Peixes SEED",
  social_security_number: "65376647307",
  email: "camila_peixes@cliente.com.seed",
  password: "cl13n73",
)
