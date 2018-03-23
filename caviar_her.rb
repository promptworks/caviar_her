class CaviarHer
  attr_accessor :caviar_restaurants, :restauranther_restaurants, :intersection_restaurants
  def initialize
    @caviar_restaurants = load_file('./caviar-restaurants')
    @restauranther_restaurants = load_file('./restauranther-restaurants')
    @intersection_restaurants = @caviar_restaurants & @restauranther_restaurants
  end

  def save_intersection!
    File.open("caviar_restaurants_from_restaurantHER.txt", "w") do |f|
      f.puts(@intersection_restaurants)
    end
  end

  def load_file(filename)
    File.readlines(filename).map &:strip
  end
end
