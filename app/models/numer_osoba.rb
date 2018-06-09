class NumerOsoba < ActiveRecord::Base
    belongs_to :osoba_kont
    belongs_to :typ_kontaktu
end
