# frozen_string_literal: true
class Idea < ApplicationRecord
	self.table_name  = 'ideas'
	self.primary_key = 'id'

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 50 }
  
  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 30 }
end
