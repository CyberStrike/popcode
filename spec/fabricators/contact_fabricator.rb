Fabricator(:contact) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { Faker::Internet.email }
  phone { Faker::PhoneNumber.short_phone_number }
  comment { Faker::Lorem.sentences }
end
