class TodoList
	# Get and set for the name of the list
    attr_accessor :list_name

    # Allow the name of the list to be set when created, create an empty list of items
    def initialize(name="My To Do List")
    	@list_name = name
    	@items = Array.new
    end

    # Adds an item to the list
    def add_item(item)
    	# Only add our defined 'Item' class to the array
    	if (item.is_a?(Item))
    		@items.push(item)
    	else
    		puts "Unable to add #{item.class} to the To Do list"
    	end
    end

    # Removes an item from the list
    def delete_item(item)
    	@items.delete(item)
    end

    # Flip the status of a task
    def update_status(item)
    	item.completed = !item.completed?
    end

    # Print the list
    def print_list
    	puts @list_name
    	@items.each do | item |
    		item.print_item
    	end
    	puts ""
    end
end

class Item
	# Create a new item.
    def initialize(description)
    	@description = description
    	@completed = false
    end

    # Set whether the item has been completed or not
	def completed=(value)
		@completed = value
	end

    # Returns a boolean indicating whether the task has been completed 
	def completed?
		@completed
	end

	# Print the task description and status
    def print_item
    	print "#{@description} - "
    	if @completed
    		puts "Complete"
    	else
    		puts "Incomplete"
    	end
    end
end