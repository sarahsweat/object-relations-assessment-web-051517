# Please copy/paste all three classes into this file to submit your solution!

class Customer

  attr_accessor :first_name,:last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    name_split = name.downcase.split(" ")
    self.all.detect {|cust| cust.first_name.downcase == name_split[0] && cust.last_name.downcase == name_split[1]}
  end

  def self.find_all_by_first_name(name)
    name_split = name.downcase.split(" ")
    self.all.select { |cust| cust.first_name.downcase == name_split[0] }
  end

  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content)
    new_review.customer = self
    new_review
  end

  def self.all_names
    self.all.map {|customer| "#{customer.first_name} #{customer.last_name}"}
  end
end

# ----------------------------------------------------------------------------

class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(rest_name)
    self.all.detect {|rest| rest.name.downcase == rest_name.downcase}
  end

  def reviews
    Review.all.select { |rev| self.name.downcase == rev.restaurant.name.downcase}
  end

  def customers
    self.reviews.map {|rev| rev.customer}
  end
end

# ----------------------------------------------------------------------------

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
