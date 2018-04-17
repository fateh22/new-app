class UserMailer < ApplicationMailer
  default from: 'fateh12test@gmail.com'

  def sign_up_confirmation(user)
    debugger
    @email = user
    @url  = 'http://localhost:3000/user/signin'
    mail(to: @email  , subject: 'New Registration' )
  end

end
