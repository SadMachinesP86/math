describe Geometry::Rectangle do
  let(:rectangle) { described_class.new(width, height) }
  let(:width) { 4 }
  let(:height) { 6 }

  context '#width' do
    subject { rectangle.width }
    it { is_expected.to eq width }
  end

  context '#height' do
    subject { rectangle.height }
    it { is_expected.to eq height }
  end

  context '#area' do
    subject { rectangle.area }
    let(:expected_area) { 24 }
    it { is_expected.to eq expected_area }
  end
end
