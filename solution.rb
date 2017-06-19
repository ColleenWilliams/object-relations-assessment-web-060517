# Please copy/paste all three classes into this file to submit your solution!


class Customer

attr_accessor :restaurant, :content, :name


@@all_customers = {}
@@all_customers_names = []
@restaurant_review = {}


  def initialize(name)
    @name = name
    @@all_customers_names << @name
    @@all_customers << self
  end


  def Customer.all
    @@all_customers
  end

  def Customer.find_by_name(given_name)
    # given a string of a full name, returns the first customer
    # whose full name matches

    @@all_customers.select {|customer, info| name == given name}

  end

  def Customer.find_all_by_first_name(given_name)
    # given a string of a first name, returns an array containing all customers with that
    # first name
    @@all_customers.select {|name, info| given_name == name}
  end

  def Customer.all_names
    @@all_customers_names
  end

  def add_review(restaurant,content)
    @restaurant = restaurant
    @content = content
    @restaurant_review[@restaurant] = @content
  end


end


class Review

  attr_accessor :customer, :review

  @@all_reviews = []


  def initialize(customer,review)
    @customer = customer
    @review = review

    @@all_reviews << @review
  end



  def Review.all
    @@all_reviews
    #returns all reviews
  end

  def customer(given_review)

    #returns the customer for that given reviews
    @@all_reviews.select {|customer, review| if (review == given_review) return customer }
  end

  def restaurant(review)
    #returns the restaurant for that given review
    restaurant.select

  end

end

class Restaurant

  attr_accessor :restaurant, :customer, :review

  @@restaurants = []
  @@restaurant_info = {}
  def initialize(restaurant,customer,review)
    @restaurant = restaurant
    @customer = customer
    if @@restaurant_info[restaurant].empty?
      @@restaurant_info[restaurant] = Array(review)
    else
      @@restaurant_info[restaurant] << review
    end

    @@restaurants << self

  end

  def Restaurant.all
    @@restaurants
  end

  def Restaurant.find_by_name(name)

    #given a string of restaurant name, returns the first restaurant that matches
    @@restaurants.select {|restaurant_name, info| restaurant_name == name}
  end

  def reviews(restaurant)
    #returns an array of all reviews for that restaurant
    @reviews_array = []
    @@restaurant_info.each do |restaurant_name, reviews|
      if restaurant_name == restaurant_name
        reviews.each {|review| @reviews_array << review}
      end
    end

  end

  def customers

    #should return all of the customers who
    #have written reviews of that restaurant.

  end

end
