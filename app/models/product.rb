class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    return "Tax is $9%"
  end

  def total
    total_charge = price * 1.09
    return "Total charged is $#{total_charge}"
  end
end
