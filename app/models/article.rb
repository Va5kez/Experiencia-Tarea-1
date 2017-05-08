class Article < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, lenght: { maximum: 50, too_long: "%{count} es el maximo de caracteres para el titulo" }
  validates_presence_of :content, length: { maximum: 200, too_long: "%{count} es el maximo de caracteres para el contenido" }
end
