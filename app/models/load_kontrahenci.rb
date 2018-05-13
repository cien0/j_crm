class LoadKontrahenci < ActiveRecord::Base

require 'csv'

def self.import(file)
    CSV.foreach(file, headers: false) do |row|

      kontrahenci_hash = row.to_hash 
      kontrahenci = Kontrahenci.where(id: kontrahenci_hash["id"])

      if kontrahenci.count == 1
        kontrahenci.first.update_attributes(kontrahenci_hash)
      else
        Kontrahenci.create!(kontrahenci_hash)
      end # end if !product.nil?
    end # end CSV.foreach
end # end self.import(file)  

def self.import!
    options = {:encoding => 'windows-1250:utf-8', :skip_blanks => true, :headers => false, :col_sep => ";"}
    CSV.foreach(Rails.root.join('public','uploads', 'kontrahenci.csv'), options ) do |row|
   puts row[0]
   unless Kontrahenci.exists?(Id_system: row[0])
          Kontrahenci.create!(:Id_system => row[0], :Nazwa => row[1], :NIP => row[2], :WWW => row[3], :Numer_tel => row[4], :Numer_fak => row[5], :Email => row[6], :Id_opiekun => row[7])
          
   end
   end
end
end