# frozen_string_literal: true

class EntrySerializer < ActiveModel::Serializer
  attributes :id, :thought, :distortion, :response, :date
end
