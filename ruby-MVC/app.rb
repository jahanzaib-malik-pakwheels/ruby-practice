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
  @product = Product.find(params[:id].to_i )
  erb :single
end
