class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable a
  
  
  nd :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  validates :profile, presence: true
  validates :position, presence: true
  validates :occupation, presence: true

  has_many :comments
  has_many :prototypes
end
