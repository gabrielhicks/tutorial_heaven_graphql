module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :content, String, null: true
    field :user_id, Integer, null: false
    field :category_id, Integer, null: false
    field :status, Boolean, null: true
    field :image, String, null: true
    field :github, String, null: true
    field :difficulty, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType, null: true
  end
end
