# 1.  Create a ruby script for adding contacts to a list
# 2.  Create a menu to add contacts, view contacts, edit contacts
# 3.  Contacts should have a name at minimum
# Bonus
# 1.  Contacts should have a name, phone, address
# 2.  Select contact to edit hit enter to keep default and go to next category to edit
# 3.  Keep program running without a while loop
# 4.  Make menu dynamic (think hash or array)

@contacts = {}

# menu to show user
def menu
 puts "Welcome to your contact list. What do you want to do?"
 puts "1. add a new contact"
 puts "2. view my contacts"
 puts "3. edit a contact"
 puts "4. Done"
 choice = gets.to_i
   case choice
   when 1
     add_contact
   when 2
     view_contacts
    when 3
     edit_contact
   when 4
     exit
   else
     puts "Please choose a valid option from the provided list."
   menu
   end
end

def add_contact
  puts "Who do you want to add?"
  name = gets.chomp

  puts "What is their phone number?"
  phone = gets.chomp

  puts "And what is their address?"
  address =  gets.chomp

  @contacts[name] = [phone, address]
  menu
end
  menu

def view_contacts
  @contacts.each_with_index { |contact, i| puts "#{i + 1} - #{contact}" }
end
  menu
