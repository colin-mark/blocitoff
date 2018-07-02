module ItemsHelper
  def from_time(item)
    from_time = item.created_at
    to_time = from_time + 7.days
    from_now = Time.now
    distance_of_time_in_words(from_now, to_time, include_seconds: true)
  end
end
