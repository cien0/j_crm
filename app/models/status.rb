class Status < ActiveRecord::Base
    belongs_to :kontrahenci
    belongs_to :status_text
    
    before_save :default_values
  def default_values
    self.status_text_id ||= '3' # note self.status = 'P' if self.status.nil? might be safer (per @frontendbeauty)
  end
end
