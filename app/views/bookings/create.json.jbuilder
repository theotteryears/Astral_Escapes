if @booking.persisted?
  json.form render(partial: "shared/form", formats: :html, locals: {booking: Booking.new})
  json.inserted_item render(partial: "dashboard", formats: :html, locals: {booking: @booking})
else
  json.form render(partial: "shared/form", formats: :html, locals: {booking: @booking})
end
