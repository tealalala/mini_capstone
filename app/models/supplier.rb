class Supplier < ApplicationRecord
  has_many :products

  # def products
  #   Product.find_by(supplier_id: id)
  # end
end
