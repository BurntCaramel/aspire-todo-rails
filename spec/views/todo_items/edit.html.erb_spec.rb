require 'rails_helper'

RSpec.describe "todo_items/edit", type: :view do
  before(:each) do
    @todo_item = assign(:todo_item, TodoItem.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit todo_item form" do
    render

    assert_select "form[action=?][method=?]", todo_item_path(@todo_item), "post" do

      assert_select "input#todo_item_title[name=?]", "todo_item[title]"
    end
  end
end
