class Odmowa < ActiveRecord::Base
    belongs_to :odmowa_typ, foreign_key: "odmowa_typ"

end