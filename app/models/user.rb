class User < ActiveRecord::Base

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    user if user.password == password
  end
end


###IF authetic return
