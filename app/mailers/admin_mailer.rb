class AdminMailer < ActionMailer::Base
  default from: "betaman@betaman.suse.de"

  def welcome_email(user)
    @user = user
    mail(to: "beta-progams@lists.suse.com", subject: 'Welcome to Betaman!')
  end
end