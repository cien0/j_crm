class Opiekun < ActiveRecord::Base
has_one :kontrahenci
has_one :zlecenie
end
