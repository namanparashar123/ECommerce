# frozen_string_literal: true

class PriceStillNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column :product_variants, :price, :decimal, :null => false
    change_column :order_items, :price, :decimal, :null => false
  end
end
