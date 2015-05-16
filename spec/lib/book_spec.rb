require 'spec_helper'

describe Library::Book do
  let(:book) { new_book }

  it 'should have title' do
    expect(book.title).to eq('Title')
  end

  it 'should have author' do
    expect(book.author).to eq('Author')
  end

  it 'should iterate count orders' do
    expect{ book.iterate_count_orders }.to change{ book.count_orders }.by(1)
  end
end