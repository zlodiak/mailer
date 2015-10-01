class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?(r)
    p '-----------------------'
    p r
    p role
    p role.include? r.to_s

    role.include? r.to_s
  end         
end
