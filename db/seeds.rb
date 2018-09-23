# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Archetype.create(name: "test archetype",
      description: "test description",
      hp_level: 6,
      skill_1: "sk1",
      skill_2: "sk2",
      skill_3: "sk3",
      skill_4: "sk4",
      skill_5: "sk5",
      skill_6: "sk6",
      skill_7: "sk7",
      skill_8: "sk8",
      skill_9: "sk9",
      skill_10: "sk10")

Race.create(name: "test race",
	lore: "test lore",
	advantage: "test advantage")
