class Kontrahenci < ActiveRecord::Base
belongs_to :opiekun
belongs_to :kont_klient
belongs_to :status_text
belongs_to :obroty
belongs_to :inf_dodatka_kontr

end
