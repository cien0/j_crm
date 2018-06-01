class Zlecenie < ActiveRecord::Base
belongs_to :status_zlecenia
belongs_to :typ_spotkania
belongs_to :opiekun
belongs_to :kierownik
belongs_to :kontrahenci
end
