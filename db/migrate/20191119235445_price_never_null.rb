# frozen_string_literal: true

class PriceNeverNull < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal, null: true
    change_column :product_variants, :price, :decimal, null: true
    change_column :order_items, :price, :decimal, null: true
  end
end
