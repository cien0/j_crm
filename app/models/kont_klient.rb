class KontKlient < ActiveRecord::Base
    belongs_to :typ_spotkania
    belongs_to :cel_kontaktu
    belongs_to :kontrahenci
    belongs_to :opiekun


def self.to_csv
    CSV.generate(:col_sep => ";", :encoding => 'windows-1250') do |csv|
    csv << ["id", "kontrahent", "opiekun kontaktu", "data", "typ spotkania","cel kontaktu", "raport", "info dodatkowe"]
    kont_klienta= KontKlient.all
    kont_klienta.each do |kont_kli|
    csv <<  [kont_kli.id, kont_kli.kontrahenci.nazwa,kont_kli.opiekun.login,kont_kli.data,kont_kli.typ_spotkania.typ,kont_kli.cel_kontaktu.cel,kont_kli.raport,kont_kli.inf_dodat]
    end
    end
end
  
def self.to_txt
    CSV.generate(:col_sep => "\t", :encoding => 'utf-8') do |csv|
    csv << ["id", "kontrahent", "opiekun kontaktu", "data", "typ spotkania","cel kontaktu", "raport", "info dodatkowe"]
    kont_klienta= KontKlient.all
    kont_klienta.each do |kont_kli|
    csv <<  [kont_kli.id, kont_kli.kontrahenci.nazwa,kont_kli.opiekun.login,kont_kli.data,kont_kli.typ_spotkania.typ,kont_kli.cel_kontaktu.cel,kont_kli.raport,kont_kli.inf_dodat]
    end
    end
end


end
