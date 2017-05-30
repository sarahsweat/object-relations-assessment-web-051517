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
