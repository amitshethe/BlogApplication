class Article < ApplicationRecord
    has_many :comments
    validates :title ,presence: {message: "Please fill title"}
    validates :body ,presence: true
    validates :email,presence: true, confirmation: true,format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email_confirmation, presence: true
    
      
end
