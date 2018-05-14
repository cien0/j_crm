class Kontrahenci < ActiveRecord::Base
    has_one :opiekun


def text_for_payment_status
      opiekun_hash = {}
      Opiekun.select(:id,:login).each do |c|
      opiekun_hash[c.id]= c.login
      end
     @@opiekun_status_data[opiekun_hash]
end
end
