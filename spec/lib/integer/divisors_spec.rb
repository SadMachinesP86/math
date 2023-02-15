describe Integer do
  let(:integer) { 50 }

  context 'proper_divisors' do
    subject { integer.proper_divisors }
    it { is_expected.to eq [1, 2, 5, 10, 25] }
  end

  context 'aliquot_sum' do
    subject { integer.aliquot_sum }
    it { is_expected.to eq 43 }
  end
end
