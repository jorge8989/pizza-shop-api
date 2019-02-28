['Pizza', 'Spaghetti Bolognese', 'Lasagna', 'Caesar Salad', 'Greek Salad'].each do |food|
  Food.create(name: food, customizable: food === 'Pizza')
end

['Sausage', 'Mushrooms', 'Pepperoni', 'Bacon', 'Anchovies'].each do |topping|
  Topping.create(name: topping)
end

['Neapolitan', 'Margherita', 'Californian', 'Veggie', 'Hawaiian'].each do |flavor|
  Flavor.create(name: flavor)
end
