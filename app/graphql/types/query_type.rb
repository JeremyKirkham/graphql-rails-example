Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :authors do
    type types[Types::Author]
    description "A list of authors"
    resolve ->(obj, args, ctx) {
      Author.all
    }
  end

  field :posts do
    type types[Types::PostInterface]
    description "A list of posts"
    resolve ->(obj, args, ctx) {
      Post.all
    }
  end
end
