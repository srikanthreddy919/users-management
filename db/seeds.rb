# Create seed data for Admin
username = "admin@example.com"
result_admin = Admin.find_by(username: username)
if (result_admin.blank?)
  admin = Admin.create(username: username, password: "password", status: "active")
  puts "Admin #{admin.username} created"
end

require "faker"

if (User.count < 20)
  begin
    20.times do
      user = User.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, status: "active")
      puts "User `#{user.name}` created"
    end
  rescue => exception
    puts exception.message
  end
end
