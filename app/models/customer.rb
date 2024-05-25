class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :social_security_number, presence: true
  validates :social_security_number, uniqueness: true

  validates :social_security_number, cpf: { message: 'inválido' }

end
