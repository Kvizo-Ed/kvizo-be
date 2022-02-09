class ConversationSerializer
  include JSONAPI::Serializer
  attributes :id,
             :title
  has_many :messages
end