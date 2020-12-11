module Types
  class MessageType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: true
    field :user_id, Integer, null: false
    field :category_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType, null: true
  end
end
