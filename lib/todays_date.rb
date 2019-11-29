class TodaysDate

  def convert_to_month(month)
    @months = {
      "01" => 'January',
      "02" => 'February',
      "03" => 'March',
      "04" => 'April',
      "05" => 'May',
      "06" => 'June',
      "07" => 'July',
      "08" => 'August',
      "09" => 'September',
      "10" => 'October',
      "11" => 'November',
      "12" => 'December'
    }
    @months[month]
  end

  def convert_to_number(month)
    @month_word = {
      "January" => '01',
      "February" => '02',
      "March" => '03',
      "April" => '04',
      "May" => '05',
      "June" => '06',
      "July" => '07',
      "August" => '08',
      "September" => '09',
      "October" => '10',
      "November" => '11',
      "December" => '12'
    }
    @month_word[month]
  end
end
