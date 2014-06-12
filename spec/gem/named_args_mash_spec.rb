describe Hashie::NamedArgsMash do
  context '#new' do
    subject do
      method_args = {
        one: 'one',
        two: 'two',
      }
      defaults = {
          one: 1,
        three: 3,
      }
      Hashie::NamedArgsMash.new(method_args, defaults)
    end

    it 'should use method_args instead of default' do
      expect(subject[:one]).to eq 'one'
    end

    it 'shoule use default value' do
      expect(subject[:three]).to eq 3
    end

    it 'should merge method_args and defaults' do
      expect(subject.count).to eq 3
    end

    it 'should allow keys not specified in defaults' do
      expect(subject[:two]).to eq 'two'
    end
  end ### context #new
end
