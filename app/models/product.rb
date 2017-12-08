class Product < ApplicationRecord
  has_many :order_items

  validates :name, presence: true, length: { minimum: 2, maximum: 32, too_long: "%{count} characters is the maximum allowed" }
  
  validates :description, presence: true, length: { minimum: 16, maximum: 512}

  validates :price, presence: true, numericality: { greater_than: 0 }

  has_attached_file :image, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
