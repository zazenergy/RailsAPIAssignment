
require 'rubygems'
require 'rest_client'
require 'pry'
require 'json'



#List customers
response = RestClient.get 'http://localhost:3000/customers.json',  :accept => :json

customers = JSON.parse(response)
customers.each do |n|
	puts n["first_name"] + " " + n["last_name"] if n["first_name"] && n["last_name"]
end

binding.pry
#Create new customers
 puts "Please enter your first name"
 first_name = gets.chomp
 puts "Your last name"
 last_name = gets.chomp

RestClient.post 'http://localhost:3000/customers.json', {'customer' =>{'first_name' => first_name, 'last_name' => last_name}}.to_json, :content_type => :json, :accept => :json


 #RestClient.post "http://example.com/resource", { 'x' => 1 }.to_json, :content_type => :json, :accept => :json
