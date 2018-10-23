class Supplier < ApplicationRecord
  def products
    product.where(supplier_id: id)
  end
end
