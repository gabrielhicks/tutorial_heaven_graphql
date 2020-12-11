module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :topic, String, null: true
    field :summary, String, null: true
    field :image, String, null: true
    field :root_url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :posts, [Types::PostType], null: true
    field :comments, [Types::CommentType], null: true
  end
end
