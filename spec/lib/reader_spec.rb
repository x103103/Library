require 'spec_helper'

describe Library::Reader do
  let(:reader) do
    Library::Reader.new({
                         name:'q',
                         email:'w',
                         city:'e',
                         street:'r',
                         house:'t'
                     })
  end

  it 'should have name' do
    expect(reader.name).to eq('q')
  end

  it 'should have email' do
    expect(reader.email).to eq('w')
  end

  it 'should have city' do
    expect(reader.city).to eq('e')
  end

  it 'should have street' do
    expect(reader.street).to eq('r')
  end

  it 'should have house' do
    expect(reader.house).to eq('t')
  end
end