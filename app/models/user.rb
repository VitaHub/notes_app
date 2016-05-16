class User < ActiveRecord::Base
	has_many :notes, dependent: :destroy
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	validates :login,  presence: true, uniqueness: { case_sensitive: false }

  	devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :trackable, :validatable, :confirmable
end
