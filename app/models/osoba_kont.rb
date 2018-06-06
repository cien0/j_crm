class OsobaKont < ActiveRecord::Base
    belongs_to :kontrahenci
    belongs_to :adres_osoba
    
    def imie_and_nazwisko
        "#{imie} #{nazwisko}"
    end
end
