json.extract! product, :id, :name, :sku, :upc, :price, :cost, :stock, :min, :max, :inventory, :taxable, :labour, :image, :weight, :height, :length, :width, :created_at, :updated_at
json.url product_url(product, format: :json)
