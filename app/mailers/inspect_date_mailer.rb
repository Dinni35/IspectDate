class InspectDateMailer < ApplicationMailer
  def send_to_banking_professional(params, current_user)
    @token = params[:token]
    @message = params[:message]
    mail(to: params[:email], from: current_user.email, subject: 'Registration Invitation')
  end
end
