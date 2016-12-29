class NotifierMailer < ApplicationMailer	

	default from: 'contacto.prodelco@gmail.com'

	def new_message(name, mensaje, email, asunto)
		@name = name
		@mensaje = mensaje
		@email = email
		mail to: 'jfcumsille@uc.cl', subject: asunto  
	end

	

end
