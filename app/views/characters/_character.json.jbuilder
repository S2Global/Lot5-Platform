json.extract! character, :id, :name, :level, :exp, :arch, :race, :class, :hp, :cp, :sp, :gp, :pp, :locationX, :locationY, :created_at, :updated_at
json.url character_url(character, format: :json)
