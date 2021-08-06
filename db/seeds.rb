require 'faker'
# Product.destroy_all
# Review.destroy_all

50.times do
  Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.decimal(l_digits: 2),
    country_of_origin: Faker::Coffee.origin,
    id: Faker::Number.unique.between(from: 1, to: 50)
)
end 

250.times do 
  Review.create!(
    author: Faker::Name.name, 
    content_body: Faker::Lorem.sentence(word_count: 20),
    rating: Faker::Number.within(range: 1..5),
    product_id: Faker::Number.between(from: 1, to: 50)
  )
end 


