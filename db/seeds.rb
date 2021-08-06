require 'faker'

50.times do
  Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.decimal(l_digits: 2),
    country_of_origin: Faker::Coffee.origin
)
end 

