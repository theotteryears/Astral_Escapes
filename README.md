Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


ADDING REVIEWS:
add the foreign key to reviewws towards booking (review belongs to a booking)
nest the review create only into booking "bookings/12(:booking_id)/reviews"
build the form with 2 arguments: @booking = Booking.find(params[:booking_id]), @review = Review.new, with one input for the content of the review
add a raise in the create of the reviews controller to see what u get from the form
in the create of the review, find the corrsponding booking, create a new review with sanitized params, associate the booking to the review
redirect either to the show of the booking or to the show of the planet (to get the planet, get it from the booking)
