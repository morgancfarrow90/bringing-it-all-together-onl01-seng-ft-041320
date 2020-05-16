class Dog
  attr_accessor :id, :name, :breed

  def initialize(attributes)
    #id: nil, name:, breed:
    attributes.each {|key, value| self.send(("#{key}="), value)}
    self.id ||= nil
  end
  
  def self.create_table
    sql = "CREATE TABLE IF NONE EXISTS dogs (id INTEGER PRIMARY KEY, name TEXT, breed TEXT);"
    
    DB[:comm].execute(sql)
  end
  
  
  
end