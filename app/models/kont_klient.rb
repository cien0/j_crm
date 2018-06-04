class KontKlient < ActiveRecord::Base
    belongs_to :typ_spotkania
    belongs_to :cel_spotkania
    belongs_to :kontrahenci
end
