MyappSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)

  orphan_types [
    Types::Blogpost,
    Types::Announcement
  ]

  resolve_type lambda { |obj, _ctx|
    case obj
    when Blogpost
      Types::Blogpost
    when Announcement
      Types::Announcement
    else
      raise(
        %|
          Don't know how to get the GraphQL type of a #{obj.class.name}
          (#{obj.inspect})
        |
      )
    end
  }
end
