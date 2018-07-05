json.extract! character, :id, :name, :user_id, :level, :exp, :archetype_id, :race_id, :role, :hp, :cp, :sp, :gp, :pp, :locX, :locY, :created_at, :updated_at
json.url character_url(character, format: :json)
