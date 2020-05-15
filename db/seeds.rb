Customer.destroy_all
Item.destroy_all
Cart.destroy_all
CartItem.destroy_all

cu1 = Customer.create(name: "Lauren")
cu2 = Customer.create(name: "Karim")
cu3 = Customer.create(name: "Raul")
cu4 = Customer.create(name: "Vidhi")

i1 = Item.create(name: "Oranges", price: 1.20)
i2 = Item.create(name: "Bananas", price: 0.20)
i3 = Item.create(name: "Steak", price: 8.30)
i4 = Item.create(name: "Cucumber", price: 0.70)
i5 = Item.create(name: "Apple", price: 1)
i6 = Item.create(name: "Peach", price: 1.5)
i7 = Item.create(name: "Hamburger", price: 3.70)
i8 = Item.create(name: "Rice", price: 2.50)
i9 = Item.create(name: "Water Bottle", price: 0.50)
i10 = Item.create(name: "Tea", price: 0.70)

ca1 = Cart.create(name: "Cart1", customer_id: cu1.id)
ca2 = Cart.create(name: "Cart2", customer_id: cu2.id)
ca3 = Cart.create(name: "Cart3", customer_id: cu3.id)
ca4 = Cart.create(name: "Cart4", customer_id: cu4.id)

ci1 = CartItem.create(cart_id: ca1.id, item_id: i1.id, quantity_of_item: 2)
ci2 = CartItem.create(cart_id: ca1.id, item_id: i5.id, quantity_of_item: 5)
ci3 = CartItem.create(cart_id: ca1.id, item_id: i3.id, quantity_of_item: 2)
ci4 = CartItem.create(cart_id: ca2.id, item_id: i6.id, quantity_of_item: 3)
ci5 = CartItem.create(cart_id: ca3.id, item_id: i4.id, quantity_of_item: 1)
ci6 = CartItem.create(cart_id: ca3.id, item_id: i7.id, quantity_of_item: 2)
ci7 = CartItem.create(cart_id: ca4.id, item_id: i10.id, quantity_of_item: 8)


