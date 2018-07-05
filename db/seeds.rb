# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Archetype.create(name: "Mage",
            description: "Mages harness the underlying magic of the world, using it to their advantage and wielding it as a weapon in combat or a tool to achieve goals. From fireballs to illusions, mages act with their knowledge of the world and its arcane mystic.",
            hp_level: 6,
            skill_1: "Sense Magic",
            skill_2: "Cantrip",
            skill_3: "Empowered Spell",
            skill_4: "Dispel",
            skill_5: "Arcane Block",
            skill_6: "Potent Spell",
            skill_7: "Blink",
            skill_8: "Fly",
            skill_9: "Powerful Spell",
            skill_10: "Haste")

Archetype.create(name: "Rogue",
            description: "Rogues are quiet, stealthy and deadly. They use their speed and stealth to gain an the upper hand on their enemies. They wield daggers and knives to deal damage with precise stabs and cuts.",
            hp_level: 7,
            skill_1: "In and Out",
            skill_2: "Cheap Shot",
            skill_3: "Big Crits",
            skill_4: "Quick Steps",
            skill_5: "Exploit",
            skill_6: "Many Hits",
            skill_7: "Quick Dodge",
            skill_8: "Silent Strikes",
            skill_9: "All in Bits",
            skill_10: "Haste")

Archetype.create(name: "Warrior",
            description: "Through their knowledge of battle and their prowess with weapons and armour, these fighters use physical abilities to overpower their enemies and be victorious in battle.",
            hp_level: 8,
            skill_1: "Adrenaline Rush",
            skill_2: "Battle Haste",
            skill_3: "Double Attack",
            skill_4: "Combat Focus",
            skill_5: "Battle Cry",
            skill_6: "Vengeance",
            skill_7: "Triple Attack",
            skill_8: "Hardened Will",
            skill_9: "Raging Focus",
            skill_10: "Haste")

Race.create(name: "Human",
			lore: "Humans are adventurous and curious. They love to travel and expand, reaching new places and learning more about the area. They are explorers of the wild and they make friends with ease. As an early race, they quickly spread to farther territories, making new friends and allies.

They grew and started building cities and towns across the known world. Due to their massive expanse, they are now the race with the most population and their language has become the most wide-spoken of all, to the point where it has taken the name of Common.

Humans tend to create and follow rules and make guidelines for their society. Their civilisations build roads and control their surroundings to fit them to their will. They like order above chaos and work to expand their order around the world. ",
			advantage: "Humans may choose two extra languages they speak apart from common.")