require 'todays_date'

describe TodaysDate do
  subject(:date) { TodaysDate.new }

  it '#convert_to_month' do
    expect(date.convert_to_month('11')).to eq 'November'
  end

  it '#convert_to_number' do
    expect(date.convert_to_number('November')).to eq '11'
  end
end
