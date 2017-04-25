require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tama")


get("/") do
  erb(:index)
end
