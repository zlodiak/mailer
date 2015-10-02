class Email < ActiveRecord::Base
  validates :email, presence: true, length: { maximum:  50, minimum: 3 }
  validates :description, length: { maximum:  500}

  belongs_to :user
end
