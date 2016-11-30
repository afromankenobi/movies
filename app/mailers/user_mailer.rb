class UserMailer < ApplicationMailer
  default from: 'jv.vargass@gmail.com'

  def greetings(user)
    @user = user
    mail(
      to: user.email,
      subject: 'ola k ase ¿'
    )
  end
end
