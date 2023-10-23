# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :authors, [Types::AuthorType], null: false, description: "Returns a list of authors"
    def authors
      Author.all
    end

    field :author, Types::AuthorType, null: false, description: "Returns a single author" do
      argument :id, ID, required: true
    end
    def author(id:)
      Author.find(id)
    end

    field :books, [Types::BookType], null: false, description: "Returns a list of books"
    def books
      Book.all
    end

    field :book, Types::BookType, null: false, description: "Returns a single book" do
      argument :id, ID, required: true
    end
    def book(id:)
      Book.find(id)
    end

    field :reviews, [Types::ReviewType], null: false, description: "Returns a list of reviews"
    def reviews
      Review.all
    end

    field :review, Types::ReviewType, null: false, description: "Returns a single review" do
      argument :id, ID, required: true
    end
    def review(id:)
      Review.find(id)
    end

    field :author_id, Integer, null: false, description: "Returns the bokks of an author" do
      argument :author_id, ID, required: true
    end
    def author_id(author_id:)
      Book.where(author_id: author_id)
    end

    field :book_id, Integer, null: false, description: "Returns the reviews of a book" do
      argument :book_id, ID, required: true
    end
    def book_id(book_id:)
      Review.where(book_id: book_id)
    end
  end
end

# module Types
#   class QueryType < Types::BaseObject
#     field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
#       argument :id, ID, required: true, description: "ID of the object."
#     end

#     def node(id:)
#       context.schema.object_from_id(id, context)
#     end

#     field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
#       argument :ids, [ID], required: true, description: "IDs of the objects."
#     end

#     def nodes(ids:)
#       ids.map { |id| context.schema.object_from_id(id, context) }
#     end

#     # Add root-level fields here.
#     # They will be entry points for queries on your schema.

#     # TODO: remove me
#     field :test_field, String, null: false,
#       description: "An example field added by the generator"
#     def test_field
#       "Hello World!"
#     end
#   end
# end
