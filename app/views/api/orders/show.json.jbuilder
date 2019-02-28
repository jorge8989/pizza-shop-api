json.(@order, :id, :state)
json.products do
  json.array!(@order.products) do |product|
    json.(product, :id, :food_id)
    json.food_name product.food.name
    json.(product, :cheese, :sauce, :crust, :size, :slices)
  end
end
