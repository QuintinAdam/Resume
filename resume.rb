puts "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+="
puts "#        ____        _       _   _                     _                        #"
puts "#       / __ \\      (_)     | | (_)           /\\      | |                       #"
puts "#      | |  | |_   _ _ _ __ | |_ _ _ __      /  \\   __| | __ _ _ __ ___         #"
puts "#      | |  | | | | | | '_ \\| __| | '_ \\    / /\\ \\ / _` |/ _` | '_ ` _ \\        #"
puts "#      | |__| | |_| | | | | | |_| | | | |  / ____ \\ (_| | (_| | | | | | |       #"
puts "#       \\___\\_\\\\__,_|_|_| |_|\\__|_|_| |_| /_/    \\_\\__,_|\\__,_|_| |_| |_|       #"
puts "#                                                                               #"
puts "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+="
puts ""
puts "1776 Park Ave. #4-354 Park City, UT 84060 | (407) 443-1720 | QuintinAdam@live.com"
puts ""
sleep(2)
puts "Welcome to Quintin Adam's Somewhat Interactive Resume. What would you like to know?"
puts ""
@more = true

def menu
  puts "1. Personal 'Summary'"
  puts "2. 'Skills'"
  puts "3. 'Education'"
  puts "4. 'Contact' Info"
  puts "5. 'All'"
  puts ""
  puts "Enter a number or the corresponding word:"
  input = gets.chomp.downcase
  case input
  when '1', 'summary'
    summary
  when '2', 'skills'
    skills
  when '3', 'education'
    education
  when '4', 'contact'
    contact
  when '5', 'all'
    all         
  else
    puts "Invalid. Try a number 1-5 or 'Contact', 'Summary', 'Skills', 'Education', or 'All'"
    menu
  end
end

def summary
  puts "~=~ Summary ~=~\n\n"
  puts "\n\n"
end

def skills
  languages = [ "Ruby", "JavaScript", "HTML", "CSS", "SCSS", "CoffeScript", "jQuery", "Ajax", "HAML", "Slim" ].sort
  last_lang = languages.pop
  gems = [ "Simple Form", "Devise", "Figaro", "Better Errors", "Guard", "Letter Opener", "Xray-Rails", "Cancan", "Rolify", "Slim", "Draper", "Powder"].sort
  last_gem = gems.pop
  tools = [ "Git", "Pow", "RVM", "Sublime Text", "Textmate", "ZSH", "ITerm", "Pry", "Pry-Rails", "CodeClimate", "Gemnasium" ].sort
  last_tool = tools.pop
  tests = [ "TestUnit", "RSpec", "MiniTest", "Capybara", "FactoryGirl", "Coveralls", "Travis", "Faker" ].sort
  last_test = tests.pop
  database = [ "MySQL", "PostgreSQL", "SQLite" ].sort
  last_data = database.pop
  frameworks = ["Ruby on Rails"]
  puts "~=~ Programming Skills ~=~\n\n"
  puts "Programming languages that I have a strong understanding of: #{languages.join(", ") + " and " + last_lang}.\n\n"
  puts "Gems I use: #{gems.join(", ") + " and " + last_gem}.\n\n"
  puts "Tools I use: #{tools.join(", ") + " and " + last_tool}.\n\n"
  puts "What I use to test: #{tests.join(", ") + " and " + last_test}.\n\n"
  puts "Databases I've worked with: #{database.join(", ") + " and " + last_data}.\n\n"
  puts "Framework I use: #{frameworks.pop}.\n\n"
  puts "What are cool: Bow ties are cool.\n\n"
end

def education
  puts "~=~ Education ~=~\n\n"
  puts "Fall 2013 : DevPoint Labs : 11 week Ruby on Rails boot camp.\n\n"
  puts "Spring 2013 : Teaching my self Ruby, JavaScript, HTML and CSS using many great online resources.\n\n"
  puts "Fall 2009 : The Recording Workshop : 9 week audio engineering workshop.\n\n"
  puts "Spring 2009 : Graduated from Northville High School.\n\n"
end

def contact
  email = "QuintinAdam@live.com"
  phone = "407.443.1720"
  address = "Quintin Adam\n          1776 Park Ave. #4-435\n          Park City, UT 84060\n"
  website = "http://www.quintinadam.com/"
  github = "https://github.com/QuintinAdam/"
  linkedin = "http://www.linkedin.com/in/quintinadam"
  puts "~=~ Contact Info: ~=~\n\n"
  puts "Email:    " + email
  puts "Phone:    " + phone
  puts "Address:  " + address
  puts ""
  puts "Website:  " + website
  puts "Github:   " + github
  puts "LinkedIn: " + linkedin
  puts ""
end

def all
  summary
  sleep(5)
  skills
  sleep(5)
  education
  sleep(5)
  contact
end

def show_more?
  sleep(3)
  puts "Would you like to go back to the menu? (y/n)"
  you_want_more = gets.chomp.downcase
  if you_want_more == 'y'
    @more = true
  elsif you_want_more == 'n'
    @more = false
  else
    puts "Please respond with a 'y' for yes or a 'n' for no.\n\n"
    show_more?
  end
end


while @more == true do
  menu
  show_more?
end

