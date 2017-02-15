# • Static finder methods to wrap commonly used SQL queries and return Active Record objects
# • Construct an instance of the Active Record from a SQL result set row
# • Construct a new instance for later insertion into the table
# • Update the database and insert into it the data in the Active Record
# • Get and set the fields
# • Implement some pieces of business logic
class Student < ArachnidRecord
  attr_reader :id, :name, :wutang_name
end
