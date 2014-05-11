class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)


    sum = 0
    orders.each do |ar|
      ar.each do |item,count|
        sum += count * @menu[item]
      end
    end

    sum

  end
end

restaurant = Restaurant.new({:rice => 3, :noodles => 2})
p restaurant.cost({:rice => 2, :noodles => 5},{:rice => 1, :noodles => 2})
