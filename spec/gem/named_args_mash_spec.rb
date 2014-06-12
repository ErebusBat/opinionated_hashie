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

    it 'should require method_args' do
      expect{ Hashie::NamedArgsMash.new }.to raise_error /wrong number of arguments/
    end

  end ### Context #new

  context '#set_default' do

    it 'should accept symbol key' do
      subj = Hashie::NamedArgsMash.new({})
      subj.set_default :item,  'value'
      expect(subj.item).to eql 'value'
    end

    it 'should accept a string key' do
      subj = Hashie::NamedArgsMash.new({})
      subj.set_default 'item',  'value'
      expect(subj.item).to eql  'value'
    end

    it 'should not overwrite value' do
      subj = Hashie::NamedArgsMash.new({}, item: 'value')
      subj.set_default :item,  'default'
      expect(subj.item).to eql 'value'
    end

    it 'should not overwrite nil' do
      subj = Hashie::NamedArgsMash.new({}, item: nil)
      subj.set_default :item,  'default'
      expect(subj.item).to be_nil
    end

  end ### Context #set_default
end  ### Describe Hashie::NamedArgsMash
