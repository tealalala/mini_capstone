class Product < ApplicationRecord
  # # presence - name, price
  # validates :name, :price, :presence => true
  #
  # # uniqueness - name
  # validates :name, :uniqueness => true
  #
  # # numericality - price
  # # less than whatever you picked for your decimal - price
  # validates :price, :numericality => true
  #
  # # length at least 10 characters - description
  # validates :description, length: { minimum: 10 }

  has_many :orders

  belongs_to :supplier
  has_many :images
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    total_charge = price * 1.09
    return "Total charged is $#{total_charge}"
  end
end
