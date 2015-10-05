class Send < ActiveRecord::Base
  belongs_to :user

  validates :subject, presence: true, length: { maximum:  50, minimum: 2 }
end
