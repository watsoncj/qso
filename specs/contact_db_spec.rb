require_relative '../lib/contact_db'

describe ContactDB do
  test_db = "test.db" 
  it "should add contacts" do
    File.open(test_db,"w") do |db_file|
      db_file << YAML::dump(["one"])
    end

    db = ContactDB.new test_db
    size = db.size
    db.addContact("two")
    db.size.should eq(size+1)
  end

  it "should save contacts" do
    db = ContactDB.new test_db
    db.addContact("two")
    db.save
    db = ContactDB.new(test_db).size.should eq(2)
 end

 it "should list contacts" do
    db = ContactDB.new test_db
    db.list.size.should eq(2)
 end
end
