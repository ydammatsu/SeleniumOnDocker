require "selenium-webdriver"

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
options.add_argument('--no-sandbox')

driver = Selenium::WebDriver.for :chrome, options: options

driver.navigate.to "https://www.yahoo.co.jp/"

h1 = driver.find_element(:css, "h1")
puts h1.text

driver.quit
