class Kontrahenci < ActiveRecord::Base
belongs_to :opiekun
belongs_to :kont_klient
belongs_to :status
end
