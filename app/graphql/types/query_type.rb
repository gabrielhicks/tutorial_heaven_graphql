module Types
  class QueryType < Types::BaseObject
    # Users Queries #
    field :users, [Types::UserType], null: false do
      description "Query for all Users"
    end

    def users
      User.all
    end

    # Category Queries #
    field :categories, [Types::CategoryType], null: false do
      description "Query for all Categories"
    end

    def categories
      Category.all
    end

    field :find_category, [CategoryType], null: false do
      argument :id, ID, required: true
    end

    def find_category(id:)
      if id
        Category.where(id: id)
      else
        Category.all
      end
    end
    
    # Post Queries #
    field :posts, [Types::PostType], null: false do
      description "Query for all Posts"
    end

    def posts
      Post.all
    end

    # Comment Queries #
    field :comments, [Types::CommentType], null: false do
      description "Query for all Comments"
    end

    def comments
      Comment.all
    end

    # Message Queries #
    field :messages, [Types::MessageType], null: false do
      description "Query for all Messages"
    end

    def messages
      Message.all
    end


    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
