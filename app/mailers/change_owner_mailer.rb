class ChangeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail
    @email = params[:assign].user.email
    @team = params[:team].name
    mail to: @email, subject: I18n.t('views.messages.give_authority')
  end
end
