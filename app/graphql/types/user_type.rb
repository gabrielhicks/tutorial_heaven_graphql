module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :username, String, null: true
    field :password_digest, String, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :bio, String, null: true
    field :image, String, null: true
    field :chaticon, String, null: true
    field :is_active, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
