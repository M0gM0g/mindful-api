class EntrySerializer < ActiveModel::Serializer
  attributes :id, :thought, :distortion, :response, :date
end
