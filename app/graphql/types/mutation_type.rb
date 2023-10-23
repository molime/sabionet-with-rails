# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    field :create_book, mutation: Mutations::CreateBook
    field :create_review, mutation: Mutations::CreateReview
    def test_field
      "Hello World"
    end
  end
end
