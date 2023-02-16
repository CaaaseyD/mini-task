class Goal < ApplicationRecord
  belongs_to :user
  has_many :todo, dependent: :destroy
end
