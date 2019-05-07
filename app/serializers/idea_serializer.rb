# frozen_string_literal: true
class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tags
  has_many :comments
  belongs_to :user
end
