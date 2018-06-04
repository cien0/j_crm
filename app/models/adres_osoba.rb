class AdresOsoba < ActiveRecord::Base
    belongs_to :osoba_kont
    belongs_to :typ_adresu
end
