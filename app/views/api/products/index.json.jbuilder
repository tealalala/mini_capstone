json.array! @products do |product|
  json.partial! "product.json.jbuilder", product: product
end
