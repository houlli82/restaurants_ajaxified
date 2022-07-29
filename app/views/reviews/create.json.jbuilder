if @review.persisted?
  json.inserted_item json.partial!('restaurants/review.html.erb', locals: { review: @review })
  json.form json.partial!('form.html.erb', locals: { restaurant: @restaurant, review: Review.new})
else
  json.form json.partial!('form.html.erb', locals: { restaurant: @restaurant, review: @review})
end
