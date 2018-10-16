json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.image_url product.image_url
  json.description product.description
  json.created_at product.created_at
  json.updated_at product.updated_at
end
