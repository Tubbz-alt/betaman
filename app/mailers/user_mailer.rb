class UserMailer < ActionMailer::Base
  default from: "betaman@suse.de", reply_to: "beta-programs@lists.suse.com"

  def welcome_mail(user)
    @user = user
    mail(to: "beta-progams@lists.suse.com", subject: 'Welcome to Betaman!')
  end

  def admin_mail(subject,body)
    @body = body
    mail to: "beta-progams@lists.suse.com", subject: "Betaman Admin: #{subject} (#{Rails.env})"
  end
end
