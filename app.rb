require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tama")


get("/") do
  erb(:index)
end

get('/tamagotchi') do
  pet = Tamagotchi.new(params.fetch('name'))
  @name = pet.name
  @food_level = pet.food_level
  @sleep_level = pet.sleep_level
  @activity_level = pet.activity_level
  erb(:tamagotchi)
end

get('/update') do
  erb(:update)
end
