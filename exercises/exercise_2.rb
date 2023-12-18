### Exercise 2: Update the first store
# 1. Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
# 2. Load the second store from the database and assign it to `@store2`.
# 3. Update the first store (`@store1`) instance in the database. (Change its name or something.)

require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)

@store2 = Store.find(2)

# Output the details of the stores
pp "store 1 details:"
pp @store1.attributes
pp "store 2 details:"
pp @store2.attributes

# Update store 1 database
@store1.update(name: 'Things Store', updated_at: Time.now.utc)

# Reflect changes from database
@store1.reload

# Output updated store 1 
pp 'store 1 updated details:'
pp @store1.attributes

