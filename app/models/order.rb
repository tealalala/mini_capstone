class Order < ApplicationRecord
  belongs_to :user
  # belongs_to :product
  has_many :carted_products

  # def tax
  #   tax_rate = 0.09
  #   @find_subtotal * tax_rate
  # end
  #
  # def total
  #   total_charge = @find_subtotal * 1.09
  #   return "Total charged is $#{total_charge}"
  # end
end
