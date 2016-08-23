# app.rb

require "sinatra"

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
