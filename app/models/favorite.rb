class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  belongs_to :show
end
