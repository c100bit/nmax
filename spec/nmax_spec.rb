describe Nmax do
  let(:text) { File.read('spec/fixtures/demo1.txt') }

  describe '#add_numbers_from' do
    it 'parses all numbers' do
      subject.add_numbers_from text
      expect(subject.send :_size).to eq(9)
    end

    it 'parses digits up to 1000' do
      str = "1" * 9000
      subject.add_numbers_from str
      expect(subject.send(:_max).digits.count).to eq 1000
    end
  end

  describe '#top' do
    before { subject.add_numbers_from text }

    it 'returns top N' do
      expect(subject.top(5).count).to eq(5)
    end

    it 'returns expected array' do
      expected_array = [30000, 10000, 1000, 103, 102, 4, 3, 2, 1]
      expect(subject.top).to eq expected_array
    end
  end

end
