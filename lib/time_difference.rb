require 'date'
require_relative 'todays_date'

class TimeDifference
  def check(month, day)
    @todays_month = Date.today.to_s.split(' ').join.split('-')[1]
    @todays_day = Date.today.to_s.split(' ').join.split('-')[2]
    @todays_year = Date.today.to_s.split(' ').join.split('-')[0]
    @todays_date = "#{@todays_day}/#{@todays_month}/#{@todays_year}"

    @person_month = TodaysDate.new.convert_to_number(month)
    @person_day = day
    @person_initial_birthday = "#{@person_day}/#{@person_month}/2019"
    @person_year = 0


    (Date.parse(@todays_date)) - (Date.parse(@person_initial_birthday))

    if (Date.parse(@person_initial_birthday) - Date.parse(@todays_date)) < 0
      @person_year = 2020
    else
      @person_year = 2019
    end

    @person_actual_birthday = "#{@person_day}/#{@person_month}/#{@person_year}"

    (Date.parse(@person_actual_birthday) - Date.parse(@todays_date)).to_i
  end
end
