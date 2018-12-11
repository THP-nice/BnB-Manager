class Contact
  include ActiveModel::Model #Permet d'utiliser le model et ses attributs sans ActiveRecord
  attr_accessor :name, :email, :body
  validates :name, :email, :body, presence: true
end
