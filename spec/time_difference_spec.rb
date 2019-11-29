require 'time_difference'

describe TimeDifference do
  describe '#check' do
    it 'returns the number of days between the given date and the current date' do
      expect(subject.check('April', '02')).to eq 125
    end
  end
end
