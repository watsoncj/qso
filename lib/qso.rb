require 'callsign'

require_relative 'contact_db'

class Qso
  def self.search(callsign)
    Callsign.search callsign
  end

  def self.add(callsign)
    contact = Qso.search(callsign)
    db = ContactDB.new('db')
    db.addContact(contact)
    db.save
  end

  def self.list(callsign=nil)
    ContactDB.new('db').list    
  end
end
