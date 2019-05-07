# frozen_string_literal: true
class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tags
  has_many :comments
  has_many :reviews
  belongs_to :user
end
