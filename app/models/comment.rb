class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter,presence: true,uniqueness: true
  validates :body,presence: true
end
