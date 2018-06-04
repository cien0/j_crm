class AdresKontr < ActiveRecord::Base
    belongs_to :kontrahenci
    belongs_to :typ_adresu
end
