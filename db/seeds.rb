# puts "Started Seeding Bows..."

# bowPage = HTTParty.get('https://zelda.fandom.com/wiki/Bow#Breath_of_the_Wild')
# html = Nokogiri::HTML(bowPage)
# tables = html.css('table')
# bowTable = tables[9].css('tr')

# # puts bowTable[1].css('td')[0].inner_text
# # .children.children[0].attributes['data-src']
# all_bows = bowTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         {
#             name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
#             attack: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
#             durability: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
#             range: cell_array[4].inner_text ? cell_array[4].inner_text.chomp : nil,
#             description: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
#             category: 'bow',
#             image: cell_array[0].children.children[0].attributes['data-src'].value ? cell_array[0].children.children[0].attributes['data-src'].value.chomp : nil
#         }
#     end
# end







# puts "Finished Seeding Bows"


# WEAPONS --------

# puts "Started Weapons Seeding..."

weaponsPage = HTTParty.get('https://zelda.fandom.com/wiki/Weapon#Breath_of_the_Wild')
html = Nokogiri::HTML(weaponsPage)
tables = html.css('table')
weaponsTable = tables[0].css('tr')

all_weapons = weaponsTable.map do |row|
    cell_array = row.css('td')
    if cell_array.empty?
        nil
    else
        {
            name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            attack: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
            handed: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            durability: cell_array[6].inner_text ? cell_array[6].inner_text.chomp : nil,
            description: cell_array[7].inner_text ? cell_array[7].inner_text.chomp : nil,
            category: "weapon",
            image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
        }
    end
end

puts "starting weapon seed"

Weapon.create!(all_weapons)

puts "finished weapon seed"

# weapon_category = all_weapons.map do |weapon|
#     if defined?(weapon) == "local-variable"

#         if weapon[name].match?(/sword|broadsword|edge|scimitar|blade|claymore|longsword|longblade|cleaver/)
#             {
#                 name: weapon[:name].inner_text ? weapon[:name] : nil,
#                 attack: weapon[:attack].inner_text ? weapon[:attack] : nil,
#                 handed: weapon[:handed].inner_text ? weapon[:handed] : nil,
#                 durability: weapon[:durability].inner_text ? weapon[:durability] : nil,
#                 description: weapon[:description].inner_text ? weapon[:description] : nil,
#                 image: weapon[:image].inner_text ? weapon[:image] : nil,
#                 category: "sword"
#             }
#         end
#     end
    
# end

# ARMOR ---------------------------------

armorPage = HTTParty.get('https://zelda.fandom.com/wiki/Armor')
html = Nokogiri::HTML(armorPage)
tables = html.css('table')

# # Head Gear
headGearTable = tables[0].css('tr')

all_head_gear = headGearTable.map do |row|
    cell_array = row.css('td')
    if cell_array.empty?
        nil
    else
        {
            name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            defense: cell_array[1].inner_text ? cell_array[1].inner_text.chomp : nil,
            effect: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
            description: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            category: "head gear",
            image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
        }
    end
end

puts "Starting head gear seed"

Armor.create!(all_head_gear)

puts "finished head gear seed"

# Body Gear

bodyGearTable = tables[1].css('tr')

all_body_gear = bodyGearTable.map do |row|
    cell_array = row.css('td')
    if cell_array.empty?
        nil
    else
        {
            name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            defense: cell_array[1].inner_text ? cell_array[1].inner_text.chomp : nil,
            effect: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
            description: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            category: "body gear",
            image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
        }
    end
end

puts "starting body gear seed"

Armor.create!(all_body_gear)

puts "finished body gear seed"

# Leg Gear

legGearTable = tables[2].css('tr')

all_leg_gear = legGearTable.map do |row|
    cell_array = row.css('td')
    if cell_array.empty?
        nil
    else
        {
            name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            defense: cell_array[1].inner_text ? cell_array[1].inner_text.chomp : nil,
            effect: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
            description: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            category: "leg gear",
            image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
        }
    end
end

puts "started leg armor seed"
    Armor.create!(all_leg_gear)
puts "Finished leg Armor seed"

# SHIELDS ----------------------------------

puts "Starting Shield Seed"

shieldPage = HTTParty.get('https://zelda.fandom.com/wiki/Shield#Breath_of_the_Wild')
html = Nokogiri::HTML(shieldPage)
tables = html.css('table')
shieldTable = tables[3].css('tr')

all_shields = shieldTable.map do |row|
    cell_array = row.css('td')
    if cell_array.empty?
        nil
    else
        {
            name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            defense: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
            durability: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            material: cell_array[4].inner_text ? cell_array[4].inner_text.chomp : nil,
            description: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
            category: 'shield',
            image: cell_array[0].children.children[0].children[0].attributes['data-src'] ? cell_array[0].children.children[0].children[0].attributes['data-src'].value : nil
        }
    end
end

Shield.create!(all_shields)

puts "Finished Shield Seed"

# BOWS ---------------------------------------

puts 'Starting Bow Seeding...'

bowPage = HTTParty.get('https://zelda.fandom.com/wiki/Bow#Breath_of_the_Wild')
html = Nokogiri::HTML(bowPage)
tables = html.css('table')
bowTable = tables[9].css('tr')

all_bows = bowTable.map do |row|
    cell_array = row.css('td')
    if cell_array.empty?
        nil
    else
        {
            name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            attack: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
            durability: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            range: cell_array[4].inner_text ? cell_array[4].inner_text.chomp : nil,
            description: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
            image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil,
            category: "bow"
        }
    end
end

Bow.create!(all_bows)

puts "Finished Bow Seeding"