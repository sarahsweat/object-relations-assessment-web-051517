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

  def customers_first_name
    self.customers.map {|cust| cust.first_name}
  end

end
