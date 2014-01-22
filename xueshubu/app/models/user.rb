class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def is_admin?
    if self.admin == 2
      return true
    else
      return false
    end
  end

  def is_super_admin?
    if self.email == "coolmich00@gmail.com" || self.email == "antedeluvia00@gmail.com"
      return true
    else
      return false
    end
  end
end
