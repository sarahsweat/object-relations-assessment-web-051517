require_relative '../config/environment.rb'
require_relative "../lib/customer.rb"
require_relative "../lib/review.rb"
require_relative "../lib/restaurant.rb"

def reload
  load 'config/environment.rb'
end

Pry.start
