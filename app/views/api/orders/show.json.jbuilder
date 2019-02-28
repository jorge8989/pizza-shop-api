json.(@order, :id, :state)
json.products do
  json.array!(@order.products) do |product|
    json.(product, :id, :food_id)
    json.food_name product.food.name
    json.(product, :flavor_id)
    json.flavor_name product.flavor ? product.flavor.name : nil
    json.toppings do
      json.array!(product.toppings) do |topping|
        json.(topping, :id, :name)
      end
    end
    json.(product, :cheese, :sauce, :crust, :size, :slices)
  end
end
