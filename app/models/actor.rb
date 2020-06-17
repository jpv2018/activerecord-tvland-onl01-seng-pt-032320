class Actor < ActiveRecord::Base
  has_many :character
  has_many :show, through: :character
  
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