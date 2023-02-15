describe Geometry::Circle do
  let(:circle) { described_class.new(radius) }
  let(:radius) { 5 }

  context '#radius' do
    subject { circle.radius }
    it { is_expected.to eq radius }
  end

  context '#area' do
    subject { circle.area }
    let(:expected_area) { circle.radius * circle.radius * Math::PI }
    it { is_expected.to be_within(0.01).of expected_area }
  end
end
