module Mutations
  CreateBlogpost = GraphQL::Relay::Mutation.define do
    name 'CreateBlogpost'
    description 'Creates a new blogpost'

    # Define input parameters
    input_field :author_id, !types.ID
    input_field :title, !types.String
    input_field :body, !types.String

    # Define return parameters
    return_field :post, Types::Blogpost

    # Resolve block to create a blogpost
    resolve lambda { |_object, inputs, _ctx|

      post = Post.create(
        type: 'Blogpost',
        author_id: inputs[:author_id],
        title: inputs[:title],
        body: inputs[:body]
      )

      { post: post }
    }
  end
end
