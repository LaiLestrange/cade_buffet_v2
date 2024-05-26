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
  email: "carlos_aries@customer.com.seed",
  password: "cl13n73",
)
cliente2 = Customer.create!(
  name: "Carla Touro SEED",
  social_security_number: "94261448700",
  email: "carla_touro@customer.com.seed",
  password: "cl13n73",
)
cliente3 = Customer.create!(
  name: "Carmem Gemeos SEED",
  social_security_number: "54800526590",
  email: "carmem_gemeos@customer.com.seed",
  password: "cl13n73",
)
cliente4 = Customer.create!(
  name: "Caio Câncer SEED",
  social_security_number: "98337228733",
  email: "caio_cancer@customer.com.seed",
  password: "cl13n73",
)
cliente5 = Customer.create!(
  name: "Célia Leão SEED",
  social_security_number: "01531718639",
  email: "celia_leao@customer.com.seed",
  password: "cl13n73",
)
cliente6 = Customer.create!(
  name: "Clovis Virgem SEED",
  social_security_number: "61041784058",
  email: "clovis_virgem@customer.com.seed",
  password: "cl13n73",
)
cliente7 = Customer.create!(
  name: "Claudio Libra SEED",
  social_security_number: "92697149856",
  email: "claudio_libra@customer.com.seed",
  password: "cl13n73",
)
cliente8 = Customer.create!(
  name: "Cristiano Escorpião SEED",
  social_security_number: "92525068025",
  email: "cristiano_escorpiao@customer.com.seed",
  password: "cl13n73",
)
cliente9 = Customer.create!(
  name: "Cecília Sagitário SEED",
  social_security_number: "61251339824",
  email: "cecilia_sagitario@customer.com.seed",
  password: "cl13n73",
)
cliente10 = Customer.create!(
  name: "César Capricórnio SEED",
  social_security_number: "60638753015",
  email: "cesar_capricornio@customer.com.seed",
  password: "cl13n73",
)
cliente11 = Customer.create!(
  name: "Charles Aquário SEED",
  social_security_number: "23866487703",
  email: "charles_aquario@customer.com.seed",
  password: "cl13n73",
)
cliente12 = Customer.create!(
  name: "Camila Peixes SEED",
  social_security_number: "65376647307",
  email: "camila_peixes@customer.com.seed",
  password: "cl13n73",
)



admin1 = Manager.create!(
  name: "Marcos Áries SEED",
  email: "marcos_aries@manager.com.seed",
  password: "m4n4g3r",
)
admin2 = Manager.create!(
  name: "Maurício Touro SEED",
  email: "mauricio_touro@manager.com.seed",
  password: "m4n4g3r",
)
admin3 = Manager.create!(
  name: "Marcela Gemeos SEED",
  email: "marcela_gemeos@manager.com.seed",
  password: "m4n4g3r",
)
admin4 = Manager.create!(
  name: "Maria Câncer SEED",
  email: "maria_cancer@manager.com.seed",
  password: "m4n4g3r",
)
admin5 = Manager.create!(
  name: "Michele Leão SEED",
  email: "michele_leao@manager.com.seed",
  password: "m4n4g3r",
)
admin6 = Manager.create!(
  name: "Marina Virgem SEED",
  email: "marina_virgem@manager.com.seed",
  password: "m4n4g3r",
)
admin7 = Manager.create!(
  name: "Mônica Libra SEED",
  email: "monica_libra@manager.com.seed",
  password: "m4n4g3r",
)
admin8 = Manager.create!(
  name: "Mateus Escorpião SEED",
  email: "mateus_escorpiao@manager.com.seed",
  password: "m4n4g3r",
)
admin9 = Manager.create!(
  name: "Maiara Sagitário SEED",
  email: "maiara_sagitario@manager.com.seed",
  password: "m4n4g3r",
)
admin10 = Manager.create!(
  name: "Madalena Capricórnio SEED",
  email: "madalena_capricornio@manager.com.seed",
  password: "m4n4g3r",
)
admin11 = Manager.create!(
  name: "Manoela Aquário SEED",
  email: "manoela_aquario@manager.com.seed",
  password: "m4n4g3r",
)
admin12 = Manager.create!(
  name: "Monique Peixes SEED",
  email: "monique_peixes@manager.com.seed",
  password: "m4n4g3r",
)
