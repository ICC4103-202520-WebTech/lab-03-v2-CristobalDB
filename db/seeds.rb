# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Room.create!(number: "8", room_type: 8, price: 50, status: 8)

Guest.create!(first_name: "Cristobal", last_name:"Diaz", email:"cdiaz11@miuandes.cl", phone: "+56926476953", document_id: "546897536")

Resrvation.create!(code: "AA0000", guest_id: 8, room_id: 8, check_in: Date.new(2025, 9, 5), check_out: Date.new(2025, 9, 7), status: 0, adults: 2, children: 0)

Service.create!(name: "Lunch", price: 10, is_active: true)

ServiceUsage.create!(reservation_id: 8, service: 8, quantity:2, used_at: DateTime.new(2025, 9, 7, 14, 30), note: "Buen servicio")

Invoice.create!(reservation_id: 8, nights_subtotal: 50 * 5, services_subtotal: 50, tax: 19, total: 319, issued_at: DateTime.new(2025, 9, 7, 14, 30), status: 0)
