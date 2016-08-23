# app.rb

require "sinatra"


get "/" do
  erb :home
end


get "/products/leather_leggings" do
  erb :leather_leggings
end

get("/products/leather_jacket") {
  erb :leather_jacket
}


shopping_cart = []

# length=taller&color=black&quantity=5
  # params[:length]   -> "taller"
  # params[:color]    -> "black"
  # params[:quantity] -> "5"

post "/add_to_cart" do
  shopping_cart.push({
    length: params[:length],
    color: params[:color],
    quantity: params[:quantity].to_i })

  redirect to("/")
end


get "/shopping_cart" do
  @cart = shopping_cart

  erb :cart
end

