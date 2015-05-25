class Cliente < ActiveRecord::Base
	validates :nombre, presence: {message: "no puede estar vacio"},
					   format: {with: /[a-zA-Z]/, message: "solo pueden contener letras"}
	validates :apellido, presence: {message: "no puede estar vacio"},
						 format: {with: /[a-zA-Z]/, message: "solo pueden contener letras"}
	validates :cedula, presence: {message: "no puede estar vacio"},
					   uniqueness: {message: "ya existe un cliente con esta cédula."},
					   length: {maximum: 8, message: "es demasiada larga (Máximo 8 carácteres)"},
					   format: {with: /[0-9]/, message: "solo debe contener números."}
	validates :telefono, presence: {message: "no puede estar vacio"},
						 format: {with: /[0-9]/, message: "solo debe contener números"}
	CORREO_VALIDO = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :correo, presence: {message: "no puede estar vacio"},
					   format: {:with => CORREO_VALIDO, message: "El formato del correo es invalido"}
	validates :direccion, presence: {message: "no puede estar vacio"}
	has_many :expedientes
end