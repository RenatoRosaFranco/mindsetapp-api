# frozen_string_literal: true
class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :tags
  belongs_to :user
end
