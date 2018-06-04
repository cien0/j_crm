class OsobaKont < ActiveRecord::Base
    belongs_to :kontrahenci
    
    def imie_and_nazwisko
        "#{imie} #{nazwisko}"
    end
end
