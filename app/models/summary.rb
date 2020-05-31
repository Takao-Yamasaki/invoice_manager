class Summary < ApplicationRecord
  belongs_to :client
  has_many :items
end
