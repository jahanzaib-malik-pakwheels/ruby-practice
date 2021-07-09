require 'sinatra'
require_relative 'models/product.rb'

helpers do
  def titlecase(title)
    title != 'us' ? title.capitalize : title.upcase
  end
end

get '/' do
  # HOME LANDING PAGE SHOWING BANNER PHOTO, TITLE, AND SUBTITLE
  @page_title = "Home"
  erb :index
end


get '/team' do
  # TEAM PAGE LISTING THE TEAM MEMBERS
  erb :team
end

get '/products' do
  # PRODUCTS PAGE LISTING ALL THE PRODUCTS
  @products = Product.sample_locations
  print @products
  @page_title = "Products"
  erb :products
end

get '/products/location/:location' do
  # PAGE DISPLAYING ALL PHOTOS FROM ONE LOCATION
  @products = Product.find_by_location(params[:location])
  print @products
  @page_title = params[:location]
  erb :category
end 

get '/products/:id' do
  # PAGE DISPLAYING ONE PRODUCT WITH A GIVEN ID
  data = HTTParty.get('https://fomotograph-api.udacity.com/products.json')['photos']
  
  erb "<!DOCTYPE html>
  <html>
  <head>
    <% product = data.select { |prod| prod['id'] == params[:id].to_i }.first %>
    <title>Fomotograph | <%= product['title'] %> </title>
    <link rel='stylesheet' type='text/css' href='<%= url('/style.css') %>'>
    <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
  </head>

  <body>

    <div id='container'>

      <div id='header'>
        <a href='/'><img src='/logo-black-text.png' alt='logo image' class='logo'/></a>
        <a href='/team' class='nav'>Team</a>
        <a href='/products' class='nav'>Products</a>
      </div>

      <div id='main'>
        <h1><%= product['title'] %></h1>
        <a class='small-button' href='#'>Fomotograph Me!</a>
        <p class='summary'> <%= product['summary'] %> </p>
        <p class='summary'>Order your prints today for $<%= product['price'] %></p>
        <img class='full' src='<%= product['url'] %>' />
        <a class='small-button' href='/products/location/<%= product['location'] %>'> View All <%= product['location'] != 'us' ? product['location'].capitalize : product['location'].upcase %> Products </a>
      </div>

      <div id='footer'>
        © Fomotograph
      </div>

    </div>

  </body>
  </html>"
end
