class CartsController < ApplicationController

    get '/carts' do
        @carts = Cart.all
        erb :'/carts/index'
    end

    get '/carts/new' do
        @items = Item.all
        @customers = Customer.all
        erb :'/carts/new'
    end

    get '/carts/:id' do
        @cart = current_cart
        erb :'/carts/show'
    end

    post '/carts/new' do
        redirect ('/carts/new')
    end

    post '/carts' do
        cart = Cart.new(params[:cart])
        if !params[:customer][:name].empty?
            new_customer = Customer.create(params[:customer])
            cart.customer_id = new_customer.id
        end
        cart.save
        new_cart_item = CartItem.create(cart_id: cart.id, item_id: 7, quantity_of_item: 2)
        new_cart_item = CartItem.create(cart_id: cart.id, item_id: 9, quantity_of_item: 2)
        redirect ("/carts/#{cart.id}")
    end

    get '/carts/:id/edit' do
        @cart = current_cart
        @items = Item.all
        erb :'/carts/edit'
    end

    patch '/carts/:id' do
        cart = current_cart
        cart.save(params[:cart])
        binding.pry
        new_cart_item = CartItem.create(cart_id: cart.id, item_id: 4, quantity_of_item: 2)
        redirect ("/carts/#{cart.id}")
    end

    post '/carts/:id/edit' do
        cart = current_cart
        redirect "/carts/#{cart.id}/edit"
    end

    delete '/carts/:id' do
        cart = current_cart
        cart.destroy
        redirect ('/carts')
    end

    def current_cart
        Cart.find(params[:id])
    end
end