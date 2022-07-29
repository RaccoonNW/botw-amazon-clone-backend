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
            # name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            # attack: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
            # durability: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            # range: cell_array[4].inner_text ? cell_array[4].inner_text.chomp : nil,
            # description: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
            # image: cell_array[0].children.children[0].attributes['data-src'].value ? cell_array[0].children.children[0].attributes['data-src'].value.chomp : nil
#         }
#     end
# end



# puts "Finished Seeding Bows"


# WEAPONS --------

# puts "Started Weapons Seeding..."

# weaponsPage = HTTParty.get('https://zelda.fandom.com/wiki/Weapon#Breath_of_the_Wild')
# html = Nokogiri::HTML(weaponsPage)
# tables = html.css('table')
# weaponsTable = tables[0].css('tr')

# all_weapons = weaponsTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         {
            # name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
            # attack: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
            # handed: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
            # durability: cell_array[6].inner_text ? cell_array[6].inner_text.chomp : nil,
            # description: cell_array[7].inner_text ? cell_array[7].inner_text.chomp : nil,
            # image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
#         }
#     end
# end

# puts "Finished Seeding Weapons"

# puts "Started Seeding Armor..."

# ARMOR ---------------------------------

# armorPage = HTTParty.get('https://zelda.fandom.com/wiki/Armor')
# html = Nokogiri::HTML(armorPage)
# tables = html.css('table')

# # Head Gear
# headGearTable = tables[0].css('tr')

# all_head_gear = headGearTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         {
#             name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
#             defense: cell_array[1].inner_text ? cell_array[1].inner_text.chomp : nil,
#             effect: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
#             description: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
#             image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
#         }
#     end
# end

# Body Gear

# bodyGearTable = tables[1].css('tr')

# all_body_gear = bodyGearTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         {
#             name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
#             defense: cell_array[1].inner_text ? cell_array[1].inner_text.chomp : nil,
#             effect: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
#             description: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
#             image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
#         }
#     end
# end

# Leg Gear

# legGearTable = tables[2].css('tr')

# all_leg_gear = legGearTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         {
#             name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
#             defense: cell_array[1].inner_text ? cell_array[1].inner_text.chomp : nil,
#             effect: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
#             description: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
#             image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
#         }
#     end
# end

# puts "Finished Seeding Armor"

# SHIELDS ----------------------------------

# shieldPage = HTTParty.get('https://zelda.fandom.com/wiki/Shield#Breath_of_the_Wild')
# html = Nokogiri::HTML(shieldPage)
# tables = html.css('table')
# shieldTable = tables[3].css('tr')

# all_shields = shieldTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         #  puts cell_array[0].children.children[0].children[0].attributes['data-src']
#         {
#             name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
#             defense: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
#             durability: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
#             material: cell_array[4].inner_text ? cell_array[4].inner_text.chomp : nil,
#             description: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
#             image: cell_array[0].children.children[0].children[0].attributes['data-src'] ? cell_array[0].children.children[0].children[0].attributes['data-src'].value : nil
#         }
#     end
# end

# puts all_shields

# BOWS ---------------------------------------

# puts 'Starting Bow Seeding...'

# bowPage = HTTParty.get('https://zelda.fandom.com/wiki/Bow#Breath_of_the_Wild')
# html = Nokogiri::HTML(bowPage)
# tables = html.css('table')
# bowTable = tables[9].css('tr')

# all_bows = bowTable.map do |row|
#     cell_array = row.css('td')
#     if cell_array.empty?
#         nil
#     else
#         #  puts cell_array[0].children.children[0].children[0].attributes['data-src']
#         {
#             name: cell_array[0].inner_text ? cell_array[0].inner_text.chomp : nil,
#             attack: cell_array[2].inner_text ? cell_array[2].inner_text.chomp : nil,
#             durability: cell_array[3].inner_text ? cell_array[3].inner_text.chomp : nil,
#             range: cell_array[4].inner_text ? cell_array[4].inner_text.chomp : nil,
#             description: cell_array[5].inner_text ? cell_array[5].inner_text.chomp : nil,
#             image: cell_array[0].children.children[0].attributes['data-src'] ? cell_array[0].children.children[0].attributes['data-src'].value : nil
#         }
#     end
# end

# puts "Finished Bow Seeing"

# puts tableRow[1].css('td')[0].inner_text

# ARROWS -------------------------------------------