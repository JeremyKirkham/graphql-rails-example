module Types
    Blogpost = GraphQL::ObjectType.define do
      name 'Blogpost'
      description 'A subclass of post that contains a body'
      interfaces [Types::PostInterface]
      field :body, !types.String
    end
end
