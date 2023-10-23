class Mutations::CreateReview < Mutations::BaseMutation
  argument :rating, Integer, required: true
  argument :message, String, required: false
  argument :book_id, Integer, required: true

  type Types::ReviewType

  def resolve(rating:, message:, book_id:)
    reviews = Review.where(book_id: book_id)
    final_rating = 0
    for review in reviews do
      if review.rating == nil or review.rating == 0
        next
      else
        final_rating += review.rating
      end
    end
    final_rating += rating
    final_rating = final_rating / reviews.length + 1
    puts final_rating
    Book.update(book_id, rating: final_rating)
    Review.create(
      rating: rating,
      message: message,
      book_id: book_id
    )
  end

end
