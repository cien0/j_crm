class DostMarketingowe < ActiveRecord::Base
    belongs_to :kontrahenci

def self.to_csv
    CSV.generate(:col_sep => ";", :encoding => 'windows-1250') do |csv|
    csv << ["id", "kontrahent", "typ", "ile", "data"]
    dost_marketingowe= DostMarketingowe.all
    dost_marketingowe.each do |dost_mark|
    csv <<  [dost_mark.id,dost_mark.kontrahenci.nazwa,dost_mark.typ,dost_mark.ile,dost_mark.data]
    end
    end
end
    
def self.to_txt
    CSV.generate(:col_sep => "\t", :encoding => 'utf-8') do |csv|
    csv << ["id", "kontrahent", "typ", "ile", "data"]
    dost_marketingowe= DostMarketingowe.all
    dost_marketingowe.each do |dost_mark|
    csv <<  [dost_mark.id,dost_mark.kontrahenci.nazwa,dost_mark.typ,dost_mark.ile,dost_mark.data]
end
end
end
  
  
end
