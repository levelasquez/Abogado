class Tribunal < ActiveRecord::Base
	validates :area, presence: {message: "no puede estar vacio"}
	validates :instancia, presence: {message: "no puede estar vacio"}
	validates :tipo, presence: {message: "no puede estar vacio"}
	validates :juez, presence: {message: "no puede estar vacio"},
					 format: {with: /[a-zA-Z]/, message: "solo puede contener letras"}
	validates :direccion, presence: {message: "no puede estar vacio"}
	validates :telefono, presence: {message: "no puede estar vacio"},
						 format: {with: /[0-9]/, message: "solo debe contener números"}
end
