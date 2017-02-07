# 1 + 1                  # => 2
# num = 1                # => 1
# num + num              # => 2
# def say_hello(*names)
#   puts "Sup #{names}"  # => nil
# end                    # => :say_hello
#
# say_hello("Bob", "Harry")  # => nil
#
# class Person
#   def initialize(name)
#     @name = name        # => "bob"
#   end                   # => :initialize
#
#   def say_hello
#     puts "#{@name} says hello"  # => nil, nil
#   end                           # => :say_hello
# end                             # => :say_hello
#
# bob = Person.new("bob")  # => #<Person:0x007fada6874a50 @name="bob">
# bob.say_hello            # => nil

def send_some_message_to_anything(anything, the_message)
  anything.send(the_message)                              # => "nevetS"
end                                                       # => :send_some_message_to_anything

send_some_message_to_anything("Steven", ("rev" +"erse"))  # => "nevetS"
