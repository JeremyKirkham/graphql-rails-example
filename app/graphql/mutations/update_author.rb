module Mutations
  UpdateAuthor = GraphQL::Relay::Mutation.define do
    name 'UpdateAuthor'
    description 'Updates an author'

    # Define input parameters
    input_field :id, !types.ID
    input_field :first_name, !types.String
    input_field :last_name, !types.String

    # Define return parameters
    return_field :author, Types::Author

    # Resolve block to update an author
    resolve lambda { |_object, inputs, _ctx|

      author = Author.find(inputs[:id])
      author.update(
        first_name: inputs[:first_name],
        last_name: inputs[:last_name]
      )

      { author: author }
    }
  end
end
