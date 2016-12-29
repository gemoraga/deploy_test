class MailsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def recibirMail
		name = params[:name]
		mail = params[:email]
		asunto = params[:subject]
		mensaje = params[:message]
		NotifierMailer.new_message(name, mensaje, mail, asunto).deliver
		flash[:success] = I18n.t("flashmail")
		redirect_to contacto_path
	end
end
