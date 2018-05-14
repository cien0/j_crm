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
   unless Kontrahenci.exists?(system_id: row[0])
          Kontrahenci.create!(:system_id => row[0], :nazwa => row[1], :nip => row[2], :www => row[3], :numer_tel => row[4], :numer_fak => row[5], :email => row[6], :opiekun_id => Opiekun.find_by(login: row[7] ).id)
   end
   end
end
end