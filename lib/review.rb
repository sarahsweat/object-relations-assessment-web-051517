
require "pry"

class Review

  attr_accessor :restaurant, :content, :customer

  @@all = []

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    @customer = nil
    @@all << self
  end

  def self.all
    @@all
  end
  
end
