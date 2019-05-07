# frozen_string_literal: true
class Idea < ApplicationRecord
	self.table_name  = 'ideas'
	self.primary_key = 'id'

	belongs_to :user
	has_many   :comments, dependent: :destroy
	has_many   :reviews,  dependent: :destroy

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
