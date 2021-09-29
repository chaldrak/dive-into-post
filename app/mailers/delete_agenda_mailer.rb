class DeleteAgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail
    @recipient = params[:recipient]
    @user = params[:user].email
    @agenda = params[:agenda].title
    mail to: @recipient.email, subject: I18n.t('views.messages.delete_agenda')
  end
end
