require_relative '../lib/qso'

describe Qso do
  
  it "should search for a contact" do
    contact = Qso.search 'kd0rwr'
    contact.current.callsign.should eq "KD0RWR"
  end

end
