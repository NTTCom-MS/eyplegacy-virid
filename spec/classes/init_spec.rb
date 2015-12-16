require 'spec_helper'
describe 'virid' do

  context 'with defaults for all parameters' do
    it { should contain_class('virid') }
  end
end
