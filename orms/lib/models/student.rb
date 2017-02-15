# • Static finder methods to wrap commonly used SQL queries and return Active Record objects
# • Construct an instance of the Active Record from a SQL result set row
# • Construct a new instance for later insertion into the table
# • Update the database and insert into it the data in the Active Record
# • Get and set the fields
# • Implement some pieces of business logic
class Student
  attr_reader :id, :name, :wutang_name
  def initialize(args)
    args.each do |attribute, value|
      instance_variable_set("@#{attribute}".to_sym, value)
    end
  end

  def self.all
    results = DB[:conn].execute(<<-SQL)
    SELECT *
    FROM students
    SQL
    results.map do |row_set|
      self.new_from_row_set(row_set)
    end
  end

  def self.new_from_row_set(row_set)
    row_set = row_set.reject {|k, _| k.is_a? Integer }
    self.new(row_set)
  end
end
