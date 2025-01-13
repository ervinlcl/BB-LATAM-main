class UserMailer < ActionMailer::Base
    default :from => "contacto@migranempresa.com"



	def send_alert_mail(nombre,email,telefono,message)
		@nombre = nombre
		@email = email
        @telefono = telefono
        @message = message
		mail(:to => "contacto@migranempresa.com", :subject => "Contacto desde sitio web")
	end

	def send_newsletter(nombre,email)
		@nombre = nombre
		@email = email
    
		mail(:to => "contacto@migranempresa.com", :subject => "Registro Newsletter Mi Gran Empresa")
	end


	def send_post(post,email)

		@post = post
		@email = email
    
		mail(:to => @email, :subject => "Newsletter Mi Gran Empresa - " + @post.company_name.to_s )

	end


end
