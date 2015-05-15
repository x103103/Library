require 'spec_helper'

describe Library::Reader do

  it 'should have name' do
    reader = Library::Reader.new(name:'s')
    expect(reader.name).to eq('s')
  end

  it 'should have email' do
    reader = Library::Reader.new(email:'s')
    expect(reader.email).to eq('s')
  end
end