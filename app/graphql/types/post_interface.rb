module Types
  PostInterface = GraphQL::InterfaceType.define do
    name 'Post'
    description 'The interface for all posts'
    field :id, !types.ID
    field :author, !Types::Author
    field :title, !types.String
  end
end
