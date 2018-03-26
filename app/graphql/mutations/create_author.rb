module Mutations
  CreateAuthor = GraphQL::Relay::Mutation.define do
    name 'CreateAuthor'
    description 'Creates a new author'

    # Define input parameters
    input_field :first_name, !types.String
    input_field :last_name, !types.String

    # Define return parameters
    return_field :author, Types::Author

    # Resolve block to create an author
    resolve lambda { |_object, inputs, _ctx|

      author = Author.create(
        first_name: inputs[:first_name],
        last_name: inputs[:last_name]
      )

      { author: author }
    }
  end
end
