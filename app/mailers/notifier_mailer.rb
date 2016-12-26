class NotifierMailer < ApplicationMailer	

	default from: 'contacto.prodelco@gmail.com'

	def new_message(mensaje, email, asunto)
		@mensaje = mensaje
		@email = email
		mail to: 'jfcumsille@uc.cl', subject: asunto  
	end

	

end
