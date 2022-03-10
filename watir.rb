# require "watir"
# # Initialize browser throught Watir
# browser = Watir::Browser.new

# # Access website
# browser.goto('https://shop.smb.museum/#/tickets/list?date=2022-03-06&museum_id=19&ticketSelection=%5Bobject%20Object%5D')

# # Wait to load
# sleep(3)

# # Click on button for day 05
# browser.button(text: "05").click

# # Wait to load
# sleep(3)

# # Parse the page to a Nokogiri object
# parsed_page = Nokogiri::HTML(browser.html)

# # Search and print for alert
# p parsed_page.search(".alert")

# # Click on button for day 06
# browser.button(text: "06").click

# # Wait to load
# sleep(3)

# # Parse the page to a Nokogiri object
# parsed_page = Nokogiri::HTML(browser.html)

# # Search and print for alert
# p parsed_page.search(".alert")

# #close the browser
# browser.close
