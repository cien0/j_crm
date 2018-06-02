class DostMarketingowe < ActiveRecord::Base
    belongs_to :kontrahenci

    def self.to_csv
    CSV.generate(:col_sep => ";", :encoding => 'windows-1250') do |csv|
    csv << ["id", "kontrahent", "typ", "ile", "data"]
    dost_marketingowe= DostMarketingowe.all
    dost_marketingowe.each do |dost_marketingowe|
    csv <<  [dost_marketingowe.id,dost_marketingowe.kontrahenci.nazwa,dost_marketingowe.typ,dost_marketingowe.ile,dost_marketingowe.data]
end
end
end
    
 def self.to_txt
    CSV.generate(:col_sep => "\t", :encoding => 'utf-8') do |csv|
    csv << ["id", "kontrahent", "typ", "ile", "data"]
    dost_marketingowe= DostMarketingowe.all
    dost_marketingowe.each do |dost_marketingowe|
    csv <<  [dost_marketingowe.id,dost_marketingowe.kontrahenci.nazwa,dost_marketingowe.typ,dost_marketingowe.ile,dost_marketingowe.data]
end
end
end
  
  
end
