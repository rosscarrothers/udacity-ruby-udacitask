require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new "Udacity To Do List"

# Create 4 list items
buy_handsoap_item = Item.new "Buy handsoap"
finish_assignment_item = Item.new "Finish Udacity assignment"
pay_electric_bill = Item.new "Pay electricity bill"
call_friend_item = Item.new "Call Sam at 6pm"

# Add them to the list
list.add_item buy_handsoap_item
list.add_item finish_assignment_item
list.add_item pay_electric_bill
list.add_item call_friend_item

# Print the list
list.print_list

# Delete the first item
list.delete_item buy_handsoap_item

# Print the list
list.print_list

# Delete the second item
list.delete_item finish_assignment_item

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.update_status pay_electric_bill

# Print the list
list.print_list

# Update the title of the list
list.list_name = "My Updated List Title"

# Print the list
list.print_list
