class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many_attached :documents
end
