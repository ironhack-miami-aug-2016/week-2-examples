# app.rb

require "sinatra"
require "sinatra/reloader" if development?
require "pry"


enable(:sessions)


get "/" do
  # Refers to views/home.erb
  #                  |
  #     --------------
  #     |
  erb :home
end


get "/company" do
  # Refers to views/company.erb
  #                    |
  #       --------------
  #       |
  erb :company
end


get "/about" do
  # Refers to views/about.erb
  #                   |
  #      --------------
  #      |
  erb :about
end


get "/pizza" do
  @pizza_ingredients = [
    "Cheese", "Dough", "Tomato Sauce",
    "Mushrooms", "Pepperonni", "Pineapple"
  ]

  erb :favorite_pizza
end



users = [
  { :username => "starwars",     :name => "Star Wars",     :bio => "The official home of Star Wars on Twitter.",           :avatar => "https://pbs.twimg.com/profile_images/631535425333518336/D-i_GqpT_400x400.jpg" },
  { :username => "celinedion",   :name => "Celine Dion",   :bio => "Posts signed / Publications signées TC = Team Céline", :avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg" },
  { :username => "khalifenizar", :name => "Nizar Khalife", :bio => "I like pizza.",                                        :avatar => "https://pbs.twimg.com/profile_images/480477171362701313/HfqN0EU7_400x400.jpeg" }
]


# http://localhost:4567/users/ironhack
# http://localhost:4567/users/starwars
#                             --------
#                                |
#               ------------------
#               |
get "/users/:username" do
    #           |
    #           ------------------
    #                            |
  @user_name_string = params[:username]

  @the_user = users.find { |the_user| the_user[:username] == @user_name_string }


  # binding.pry


  if @the_user == nil
    status(404)
    erb :no_user
  else
    erb :user_profile
  end
end


get "/leadership" do
  erb :leadership
end


get "/session_test/:text" do
  text = params[:text]
  session[:saved_value] = text
  text
end

get "/session_show" do
  "Now in the session: #{session[:saved_value]}"
end
