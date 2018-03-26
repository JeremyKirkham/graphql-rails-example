# GraphQL Rails Example

An example application utilizing the GraphQL ruby gem.

## Getting started

You'll need docker installed.

- `docker-compose up --build`
- `docker-compose exec web rails db:create db:migrate`

Visit http://localhost:3000/graphiql to execute queries.

## Sample queries

Return all authors
```
query {
  authors {
    id
    first_name
    last_name
  }
}
```

Return all posts
```
query {
  posts {
    id
    title
    ...on Blogpost {
      body
    }
    ...on Announcement {
      subject
    }
  }
}
```

Create a new author
```
mutation($input: CreateAuthorInput!) {
  CreateAuthor(input: $input) {
    author {
      id
    }
  }
}
```

```
{
  "input": {
    "first_name": "Jeremy",
    "last_name": "Kirkham"
  }
}
```

Create a new blogpost
```
mutation($input: CreateBlogpostInput!) {
  CreateBlogpost(input: $input) {
    post {
      id
    }
  }
}
```

```
{
  "input": {
    "author_id": 1,
    "title": "My first blogpost",
    "body": "The body of the blogpost"
  }
}
```

Create a new announcement
```
mutation($input: CreateAnnouncementInput!) {
  CreateAnnouncement(input: $input) {
    post {
      id
    }
  }
}
```

```
{
  "input": {
    "author_id": 1,
    "title": "My first announcement",
    "subject": "Ruby on Rails"
  }
}
```
