class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    first_name = :first_name
    last_name = :last_name
    "#{first_name} #{last_name}}"
  end
  
  def list_roles
    self.characters.collect do |t|
      "#{t.name} - #{t.show}"
    end
  end
end