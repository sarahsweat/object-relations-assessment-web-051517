require_relative "../lib/customer.rb"
require_relative "../lib/review.rb"
require_relative "../lib/restaurant.rb"

require "pry"

cust1 = Customer.new("Sarah","Sweat")
cust2 = Customer.new("Lindsay","Herz")
cust3 = Customer.new("Sarah","Smith")
cust4 = Customer.new("Tony","G")

restaurant1 = Restaurant.new("Chic fil A")
restaurant2 = Restaurant.new("PDQ")
restaurant3 = Restaurant.new("Subway")
restaurant4 = Restaurant.new("Firehouse")

new_review1 = cust1.add_review(restaurant1, "Eat Mor Chkn")
new_review2 = cust2.add_review(restaurant2, "Fresh food.")
new_review3 = cust2.add_review(restaurant3, "eat freash at subway.")
new_review4 = cust3.add_review(restaurant4, "Fast fast fast.")
new_review5 = cust1.add_review(restaurant1, "Eat Mor Chkn11")
new_review6 = cust2.add_review(restaurant2, "Fresh food22.")
new_review7 = cust3.add_review(restaurant3, "eat freash at subway33.")
new_review8 = cust4.add_review(restaurant4, "Fast fast fast44.")

find_name = Customer.find_by_name("Sarah Sweat")
find_first_name = Customer.find_all_by_first_name("Sarah")

all_names_array = Customer.all_names

customer_of_review = new_review.customer
restaurant_of_review = new_review.restaurant

restaurant_reviews = restaurant1.reviews
restaurant_cutomers = restaurant1.customers
