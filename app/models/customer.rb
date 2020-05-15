class Customer < ActiveRecord::Base
    has_one :cart
    has_many :cart_items, through: :cart
end