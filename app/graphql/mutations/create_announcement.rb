module Mutations
  CreateAnnouncement = GraphQL::Relay::Mutation.define do
    name 'CreateAnnouncement'
    description 'Creates a new announcement'

    # Define input parameters
    input_field :author_id, !types.ID
    input_field :title, !types.String
    input_field :subject, !types.String

    # Define return parameters
    return_field :post, Types::Announcement

    # Resolve block to create an announcement
    resolve lambda { |_object, inputs, _ctx|

      post = Post.create(
        type: 'Announcement',
        author_id: inputs[:author_id],
        title: inputs[:title],
        subject: inputs[:subject]
      )

      { post: post }
    }
  end
end
