module ApplicationHelper
  def format_date(fecha)
    return nil unless fecha
    fecha.strftime("%B %e, %Y")
  end

  def average(reviews)
    return 0 unless reviews.any?
    reviews.sum(:rev)/reviews.count
  end
end
