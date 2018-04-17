class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :verification_email , :set_access_token

  def verification_email
    UserMailer.sign_up_confirmation(self).deliver
  end

  private
  def set_access_token
    self.access_token = generate_token
  end

  def generate_token
    SecureRandom.hex(10)
  end

  def redis
    $redis
  end

end
