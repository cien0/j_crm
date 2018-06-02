class OdmowaMark < ActiveRecord::Base
    belongs_to :kontrahenci
    belongs_to :odmowa_typ
end
