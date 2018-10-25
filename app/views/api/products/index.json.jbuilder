json.array! @products do |product|
  json.partial! "product.json.jbuilder", product: product
  json.user_info current_user
end
