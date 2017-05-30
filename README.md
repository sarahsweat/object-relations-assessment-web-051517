# Object Relations Assessment

For this assignment, we'll be working with a Yelp-style domain. We have three models - Restaurant, Customer, and Review.
For our purposes, a Restaurant has many reviews, a Customer has many reviews, and Restaurant - Customer is a many to many relationship.

If you are not sketching out your domain, and thinking about single source of truth,
you are doing it wrong :(

## Topics

+ Classes vs Instances
+ Variable Scope ( Class, Instance, Local )
+ Object Relationships
+ Arrays and Array Methods
+ Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb`  file. Please don't submit the lab until we give you the signal.

## Deliverables

Build the following methods on the customer class
+++ Customer.all
  + should return all of the customers
+++ Customer.find_by_name(name)
  + given a string of a full name, returns the first customer whose full name matches
+++ Customer.find_all_by_first_name(name)
  + given a string of a first name, returns an array containing all customers with that first name
+++ Customer.all_names
  + should return an array of all of the customer full names
+++ Customer#add_review(restaurant, content)
  + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

-----------------------------------------

Build out the following methods on the Review class

+++ Review.all
  + returns all of the reviews
+++ Review#customer
  + returns the customer for that given review
+++ Review#restaurant
  + returns the restaurant for that given review

-----------------------------------------

Build out the following methods on the restaurant class

+++ Restaurant.all
  + returns an array of all restaurants
+++ Restaurant.find_by_name(name)
  + given a string of restaurant name, returns the first restaurant that matches
+++ Restaurant#reviews
  + returns an array of all reviews for that restaurant
+++ Restaurant#customers
  + should return all of the customers who have written reviews of that restaurant.
