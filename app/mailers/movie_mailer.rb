class MovieMailer < ApplicationMailer
  default from: 'hola@moviemaker.cl'

  def notify_creation_to_user(user, movie)
    @user = user
    @movie = movie
    subject = 'Han creado una película'

    mail(
      to: @user.email,
      subject: subject
    )
  end
end
