class Review < ApplicationRecord
  belongs_to :car

  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }, presence: true, numericality: true
  validates :content, presence: true

end

