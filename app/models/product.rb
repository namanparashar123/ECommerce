# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, :price, presence: true
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :variants, class_name: 'ProductVariant'

  has_one_attached :image
  # paginates_per 10

  # mount_uploader :image, AvatarUploader
end
