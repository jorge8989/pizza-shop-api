json.array!(@orders) do |order|
  json.(order, :id, :state)
  json.products do
    json.array!(order.products) do |product|
      json.(product, :id, :food_id)
      json.food_name product.food.name
      json.(product, :flavor_id)
      json.flavor_name product.flavor ? product.flavor.name : nil
      json.(product, :cheese, :sauce, :crust, :size, :slices)
    end
  end
end
