class LoadFaktury < ActiveRecord::Base
        
    require 'csv'

def self.import(file)
    CSV.foreach(file, headers: false) do |row|

      faktury_hash = row.to_hash 
      faktury = Faktury.where(id: faktury_hash["id"])

      if fakturt.count == 1
        faktury.first.update_attributes(faktury_hash)
      else
        Faktury.create!(faktury_hash)
      end # end if !product.nil?
    end # end CSV.foreach
end # end self.import(file)  

def self.import!
   #kasujemy stare dane
   Faktury.delete_all
   #import obrotów    
    options = {:encoding => 'windows-1250:utf-8', :skip_blanks => true, :headers => false, :col_sep => ";"}
    CSV.foreach(Rails.root.join('public','uploads', 'faktury.csv'), options ) do |row|
    puts row[0]
       Faktury.create!(:kontrahenci_id => row[0], :nr_faktury => row[1], :kwota => row[2], :vat => row[3])
   end
end
end
