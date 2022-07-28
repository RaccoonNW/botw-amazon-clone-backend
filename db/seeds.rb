weaponsPage = HTTParty.get('https://zelda.fandom.com/wiki/Weapon#Breath_of_the_Wild')
html = Nokogiri::HTML(weaponsPage)
tables = html.css('table')
tableRow = tables[0].css('tr')

puts tableRow[1].css('td')[7].inner_text
# .children.children[0].attributes['data-src']

# CHANGE tableRow KEY TO CHANGE WEAPON
# Weapon Name:
# tableRow[0].css('td')[0].inner_text

# # Weapon Image:
# tableRow[1].css('td')[0].children.children[0].attributes['data-src']

# Weapon handed/category:
# tableRow[1].css('td')[3].inner_text

# Weapon Damage:
# tableRow[1].css('td')[5].inner_text

# Weapon Durability:
# tableRow[1].css('td')[6].inner_text

# Weapon Description:
# tableRow[1].css('td')[7].inner_text