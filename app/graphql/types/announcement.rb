module Types
    Announcement = GraphQL::ObjectType.define do
      name 'Announcement'
      description 'A subclass of post that has no additional fields'
      interfaces [Types::PostInterface]
      field :subject, !types.String
    end
end
