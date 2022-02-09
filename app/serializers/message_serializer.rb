class MessageSerializer
  include JSONAPI::Serializer
  attributes :id,
             :conversation_id,
             :text,
             :created_at
end