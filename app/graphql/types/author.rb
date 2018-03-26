module Types
  Author = GraphQL::ObjectType.define do
    name 'Author'
    field :id, !types.ID
    field :first_name, !types.String
    field :last_name, !types.String
    field :posts, types[!PostInterface]

    # Relay style pagination
    # connection :posts, Types::PostInterface.connection_type
  end
end
