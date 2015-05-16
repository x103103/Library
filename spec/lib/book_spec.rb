require 'spec_helper'

describe Library::Book do
  let(:book) { Library::Book.new('Title','Author')}

  it 'should have title' do
    expect(book.title).to eq('Title')
  end

  it 'should have author' do
    expect(book.author).to eq('Author')
  end
end