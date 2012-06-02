require 'yaml'

class ContactDB
  def initialize(db_filename)
    @db_filename = db_filename
    @db = YAML::load_file(db_filename) rescue []
  end

  def addContact(contact)
    @db << contact
  end
  
  def save
    File.open(@db_filename, 'w') do |db_file|
      YAML.dump(@db, db_file)
    end
  end

  def list
    @db
  end

  def size
    @db.size
  end

  def to_s
    @db.to_s
  end
end
