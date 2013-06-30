class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :blog_posts
  has_attached_file :avatar, :styles => {
		:original => '1000x1000>',
		:large    => '600x600>',
		:medium   => '300x300>',
		:small    => '100x100>',
		:thumb    => '30x30>'
	}
  validates_presence_of :first_name, :last_name
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # # Setup accessible (or protected) attributes for your model
  #   attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, 
  #                   :user_name, :name
  
  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }
  
  def blog_image_url
    return avatar.url(:small)
  end
  
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
