module Mutations
  DeleteAuthor = GraphQL::Relay::Mutation.define do
    name 'DeleteAuthor'
    description 'Deletes an author'

    # Define input parameters
    input_field :id, !types.ID

    # Define return parameters
    return_field :author, Types::Author

    # Resolve block to delete an author
    resolve lambda { |_object, inputs, _ctx|

      author = Author.find(inputs[:id])
      author.destroy

      { author: author }
    }
  end
end
