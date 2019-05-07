# frozen_string_literal: true
class Comment < ApplicationRecord
	self.table_name = 'comments'
	self.primary_key = 'id'

  belongs_to :idea
  belongs_to :user
end
