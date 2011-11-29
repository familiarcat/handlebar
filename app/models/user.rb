class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :blog_posts
  
  validates_presence_of :first_name, :last_name
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :user_name, :name
  
  def user_name
    _user_name = self.first_name+" "+self.last_name
    return _user_name
  end
  
  def name
    return user_name
  end
  
  def admin?
    true
  end
  
end
