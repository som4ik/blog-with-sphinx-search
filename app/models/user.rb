class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
		validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
attr_accessor :login



def self.find_for_database_authentication(warden_conditions)
   conditions = warden_conditions.dup
    if login = conditions.delete(:login)
       where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
     else
      if conditions[:username].nil?
        where(conditions).first
      else
        where(username: conditions[:username]).first
      end
  end

end
end