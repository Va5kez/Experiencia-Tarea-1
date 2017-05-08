class User < ApplicationRecord
  has_many :articles
  validates_presence_of :name, lenght: { in: 3..40 , wrong_length: "La longitud del nombre debe estar entre 3 a 40 caracteres"}
  validates_presence_of :email, lenght: { maximum: 25  , too_long: "%{count} es el maximo de caracteres para el email"}
end
