class ItemsController < ApplicationController

    get '/items' do
        @items = Item.all
        erb :'/items/index'
    end

    get '/items/new' do
        @items = Item.all
        erb :'/items/new'
    end

    get '/items/:id' do
        @item = current_item
        erb :'/items/show'
    end

    post '/items/new' do
        redirect ('/items/new')
    end

    post '/items' do
        item = Item.create(params[:item])
        redirect ("/items/#{item.id}")
    end

    get '/items/:id/edit' do
        @item = current_item
        erb :'/items/edit'
    end

    patch '/items/:id' do
        item = current_item
        item.update(params[:item])
        redirect ("/items/#{item.id}")
    end

    post '/items/:id/edit' do
        item = current_item
        redirect "/items/#{item.id}/edit"
    end

    delete '/items/:id' do
        item = current_item
        item.destroy
        redirect ('/items')
    end

    def current_item
        Item.find(params[:id])
    end
end