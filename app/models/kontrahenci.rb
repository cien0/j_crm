class Kontrahenci < ActiveRecord::Base
belongs_to :opiekun
belongs_to :kont_klient
belongs_to :status_text
belongs_to :obroty
end
