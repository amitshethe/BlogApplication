class Article < ApplicationRecord
    has_many :comments
    validates :title ,presence: {message: "Please fill title"}
    validates :body ,presence: true
    validates :email, confirmation: true
    validates :email_confirmation, presence: true
    
      
end
