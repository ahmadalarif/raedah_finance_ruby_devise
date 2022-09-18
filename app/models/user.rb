class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
  validates :username, :name, :mobile_number, :email, :gender, :upload_cv, :password,:password_confirmation, presence: true  
  validates :username, :name, :mobile_number, :email, :upload_cv, uniqueness: true
  validates :mobile_number, numericality: true
  validates_format_of :mobile_number, :with => /[0-9]{9}/ 
  validates :email, format: { with: /.*@*./}
  
  

end