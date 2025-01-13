class HomeController < ApplicationController


		def search
			keywords = params[:search_text]
			@posts = Post.where("company_name like ? OR company_description like ?", "%#{keywords}%", "%#{keywords}%")
			
		end
		def publicacion



		end

		def empresa



		end
		


		def columnista



		end
        def eliminarcolumnist

                @p = Columnist.where("colm_id =?",params[:columnist_id])
                @p.delete_all

                redirect_to columnists_url

        end	
        def eliminarcompany

                @p = Company.where("comp_id =?",params[:company_id])
                @p.delete_all

                redirect_to companies_url

        end


        def eliminarcategoria

                @p = Category.where("cat_id =?",params[:cat_id])
                @p.delete_all

                redirect_to categories_url

        end

	def eliminarsubcategoria

                @p = Subcategory.where("subcat_id =?",params[:subcat_id])
                @p.delete_all

                redirect_to categories_url

        end


	def eliminarpost

		@p = Post.where("post_id =?",params[:post_id])
		@p.delete_all

		redirect_to posts_url

	end



	def editarpost



	end

	def delete_all_posts

		Post.delete_all
		redirect_to posts_url

	end

	def index

		@posts = Post.all.reverse


	end


	def admin



	end


	def about




	end


	def comunity

			session[:user_id] = nil

	end

def post_detail


end



	def sendNewsletter

		if params[:email] && params[:nombre]

			UserMailer.send_newsletter(params[:nombre],params[:email]).deliver
			n = Newsletteruser.new()
			n.name = params[:nombre]
			n.email = params[:email]
			n.save

			redirect_to thankyou_newsletter_url
		else

			redirect_to fillall_url
		end

	end


	
	def sendContactRequest

#	def send_alert_mail(nombre,email,telefono,message)


success = verify_recaptcha(secret_key: '6LdAnMwZAAAAACr9GaRPlOGg8RIJ57dl4xn8FeW0')

if success
	if params[:email] && params[:nombre] && params[:telefono] && params[:message]

		UserMailer.send_alert_mail(params[:nombre],params[:email],params[:telefono],params[:message]).deliver
		redirect_to thankyou_contact_url
	else

		redirect_to fillall_url
	end
else
	redirect_to contacto_url
end


		




	end


	
end
