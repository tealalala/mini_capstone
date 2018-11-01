json.array! @carted_products do |carted_product|
  json.partial! 'carted_product', carted_product: carted_product
end
