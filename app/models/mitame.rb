class Mitame < ApplicationRecord
  has_one_attached :image
  has_many :memos
end
