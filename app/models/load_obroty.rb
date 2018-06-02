class LoadObroty < ActiveRecord::Base
    
    require 'csv'

def self.import(file)
    CSV.foreach(file, headers: false) do |row|

      obroty_hash = row.to_hash 
      obroty = Obroty.where(id: obroty_hash["id"])

      if obroty.count == 1
        obroty.first.update_attributes(obroty_hash)
      else
        Obroty.create!(obroty_hash)
      end # end if !product.nil?
    end # end CSV.foreach
end # end self.import(file)  

def self.import!
   #kasujemy stare dane
   Obroty.delete_all
   #import obrotów    
    options = {:encoding => 'windows-1250:utf-8', :skip_blanks => true, :headers => false, :col_sep => ";"}
    CSV.foreach(Rails.root.join('public','uploads', 'obroty.csv'), options ) do |row|
   puts row[0]
   #unless Obroty.exists?(kontrahenci_id: row[0])
          Obroty.create!(:kontrahenci_id => row[0], :rok => row[1], :miesiac => row[2], :kwota => row[3])
   #end
   end
end
end
