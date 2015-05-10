class AbogadoP < ActiveRecord::Base
	validates :nombre, presence: {message: "no puede estar vacio"},
					   format: {with: /[a-zA-Z]/, message: "solo pueden contener letras"}
	validates :apellido, presence: {message: "no puede estar vacio"},
						 format: {with: /[a-zA-Z]/, message: "solo pueden contener letras"}
	validates :ipsa, presence: {message: "no puede estar vacio"},
					 uniqueness: {message: "ya existe un abogado con este ipsa"},
					 format: {with: /[0-9.]/, message: "solo puede contener números y puntos."}
	validates :telefono, presence: {message: "no puede estar vacio"},
						 format: {with: /[0-9]/, message: "solo debe contener números"}
	validates :direccion, presence: {message: "no puede estar vacio"}
	validates :cedula, presence: {message: "no puede estar vacio"},
					   uniqueness: {message: "ya existe un abogado con esta cédula."},
					   length: {maximum: 8, message: "es demasiada larga (Máximo 8 carácteres)"},
					   format: {with: /[0-9]/, message: "solo debe contener números."}
end
