class StatusZlecenia < ActiveRecord::Base
    has_one :zlecenie
end
