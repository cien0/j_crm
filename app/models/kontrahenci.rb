class Kontrahenci < ActiveRecord::Base
belongs_to :opiekun
has_one :kont_klient
end
