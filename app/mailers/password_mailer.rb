class PasswordMailer < ActionMailer::Base
  default from: "noreply@barebonesnetworking.com"

  def password_email(url, ticket_id)
    @url = url
    mail(to: "andrey.volcov@gmail.com", subject: "Ticket #{ticket_id}").deliver
  end
end
