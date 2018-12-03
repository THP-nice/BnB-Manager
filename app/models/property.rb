class Property < ApplicationRecord
  belongs_to :user

  validates :street_number, :route, :locality, :administrative_area_level_1,
  :country, :postal_code, presence: true

end
