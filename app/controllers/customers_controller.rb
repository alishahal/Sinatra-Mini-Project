class CustomersController < ApplicationController

    get '/customers' do
        @customers = Customer.all
        erb :'/customers/index'
    end

    get '/customers/new' do
        @customers = Customer.all
        erb :'/customers/new'
    end

    get '/customers/:id' do
        @customer = current_customer
        erb :'/customers/show'
    end

    post '/customers/new' do
        redirect ('/customers/new')
    end

    post '/customers' do
        customer = customer.create(params[:customer])
        redirect ("/customers/#{customer.id}")
    end

    get '/customers/:id/edit' do
        @customer = current_customer
        erb :'/customers/edit'
    end

    patch '/customers/:id' do
        customer = current_customer
        customer.update(params[:customer])
        redirect ("/customers/#{customer.id}")
    end

    post '/customers/:id/edit' do
        customer = current_customer
        redirect "/customers/#{customer.id}/edit"
    end

    delete '/customers/:id' do
        customer = current_customer
        customer.destroy
        redirect ('/customers')
    end

    def current_customer
        Customer.find(params[:id])
    end
end