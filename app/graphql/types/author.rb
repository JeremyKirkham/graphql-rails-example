module Types
  Author = GraphQL::ObjectType.define do
    name 'Author'
    field :id, !types.ID
    field :first_name, !types.String
    field :last_name, !types.String
    field :posts, types[!PostInterface]

    # Custom resolver for a field
    field :full_name, !types.String do
      resolve lambda { |obj, _args, _ctx|
        "#{obj.first_name} #{obj.last_name}"
      }
    end

    # Relay style pagination
    # connection :posts, Types::PostInterface.connection_type
  end
end
