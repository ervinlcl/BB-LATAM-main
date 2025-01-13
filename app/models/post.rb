class Post < ApplicationRecord
	# Configuración de Paperclip
	has_attached_file :picture
	
	# Validaciones para el archivo adjunto (Paperclip)
	validates_attachment :picture,
						 presence: true,
						 content_type: { content_type: ['image/jpeg', 'image/png', 'image/jpg'] },
						 size: { less_than: 100.megabytes }
  
	# Validaciones del modelo
	validates :company_name, presence: true, uniqueness: true
  
	# Asignar `post_id` antes de guardar el registro
	before_create :assign_post_id
  
	# Relación opcional
	belongs_to :columnist, optional: true
  
	# Definir clave primaria
	self.primary_key = "post_id"
  
	private
  
	# Método privado para asignar `post_id`
	def assign_post_id
	  last_post_id = Post.maximum(:post_id) # Obtiene el valor más alto de post_id
	  self.post_id = last_post_id.present? ? last_post_id + 1 : 1
	end
  end
  