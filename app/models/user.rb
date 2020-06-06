class User < ActiveRecord::Base
    has_secure_password

    has_many :user_instruments, dependent: :destroy
    has_many :instruments, through: :user_instruments

    validates :first_name, :last_name, :email, :visibility, presence: true

    validates :email, uniqueness: true

end
