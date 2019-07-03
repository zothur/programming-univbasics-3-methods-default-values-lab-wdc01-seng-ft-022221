# Define a method `meal_choice`
# It takes 2 veggies and protein defaults to meat
# It returns `meal` with a value of
# "A plate of #{protein} with #{veg1} and #{veg2}"
# and `puts` "What a nutritious meal!"

def meal_choice(veg1, veg2, protein='meat')
  puts "What a nutritious meal!"
  meal = "A plate of #{protein} with #{veg1} and #{veg2}."
  puts meal
  return meal # return here is optional. Ruby methods automatically return the last expression
end
