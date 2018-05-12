class LoadKontrahenci < ActiveRecord::Base
  
attr_accessible :name, :filename  

def import import_file 
File.foreach( import_file.path ).with_index do |line, index| 

    # Process each line.

    # For any errors just raise an error with a message like this: 
    #   raise "There is a duplicate in row #{index + 1}."
    # And your controller will redirect the user and show a flash message.

end
end
end