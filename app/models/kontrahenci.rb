class Kontrahenci < ActiveRecord::Base
belongs_to :opiekun

#def opiekun_status!
      #opiekun_hash = {}
      #Opiekun.select(:id,:login).each do |c|
      #opiekun_hash[oc.id] = c.login
      #end
     #return opiekun_hash
#end
end
