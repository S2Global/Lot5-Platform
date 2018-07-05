json.extract! item, :id, :name, :character_id, :description, :uses, :durability, :created_at, :updated_at
json.url item_url(item, format: :json)
