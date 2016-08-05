# Examples of restaurants
restaurant1 = Restaurant.create(name: "Restaurant1", telephone: "123456789")
restaurant2 = Restaurant.create(name: "Restaurant2", telephone: "987654321")

# Examples of meals
counter = 0

5.times do
  Meal.create(restaurant_id: restaurant1.id, name: "meal#{counter}", price: counter)
end

5.times do
  Meal.create(restaurant_id: restaurant2.id, name: "meal#{counter}", price: counter)
end
