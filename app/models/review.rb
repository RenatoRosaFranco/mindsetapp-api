# frozen_string_literal: true
class Review < ApplicationRecord
  self.table_name  = 'reviews'
  self.primary_key = 'id'

  belongs_to :user
  belongs_to :idea
end
