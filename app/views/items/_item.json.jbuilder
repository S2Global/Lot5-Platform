json.extract! item, :id, :name, :description, :uses, :durability, :created_at, :updated_at
json.url item_url(item, format: :json)
