After do |scenario|
    screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png")
    attach(screenshot, 'image/png')    
end