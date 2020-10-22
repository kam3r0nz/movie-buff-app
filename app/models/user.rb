class User < ActiveRecord::Base
    has_many :movies
    has_many :reviews, through: :movies
    has_secure_password
    validates_presence_of :username, :password
    validates_uniqueness_of :username
end