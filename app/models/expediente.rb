class Expediente < ActiveRecord::Base
  belongs_to :cliente

  validates :expediente, presence: {message: "no puede estar vacio"}
  validates :area, presence: {message: "no puede estar vacio"}
  validates :victima, presence: {message: "no puede estar vacio"},
  					  format: {with: /[a-zA-Z]/, message: "solo pueden contener letras"}
  validates :descripcion, presence: {message: "no puede estar vacio"}
end
