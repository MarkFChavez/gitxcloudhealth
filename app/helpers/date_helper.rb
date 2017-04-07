module DateHelper

  def human_time(time)
    Time.zone.parse(time).strftime("%I:%M %p")
  end

  def human_date(date)
    date.strftime("%B %d, %Y")
  end

end
