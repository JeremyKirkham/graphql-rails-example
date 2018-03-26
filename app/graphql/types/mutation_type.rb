Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # Authors
  field :CreateAuthor, field: Mutations::CreateAuthor.field
  field :UpdateAuthor, field: Mutations::UpdateAuthor.field
  field :DeleteAuthor, field: Mutations::DeleteAuthor.field

  # Posts
  field :CreateBlogpost, field: Mutations::CreateBlogpost.field
  field :CreateAnnouncement, field: Mutations::CreateAnnouncement.field
end
