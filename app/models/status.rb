class Status < ActiveRecord::Base
    has_one :kontrahenci
    belongs_to :status_text
end
