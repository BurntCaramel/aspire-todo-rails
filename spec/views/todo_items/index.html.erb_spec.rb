require 'rails_helper'

RSpec.describe "todo_items/index", type: :view do
  before(:each) do
    assign(:complete_items, [
      TodoItem.create!(
        title: 'Completed',
        completed_at: Time.current - 1.hours
      ),
      TodoItem.create!(
        title: "Completed",
        completed_at: Time.current - 2.minutes
      )
    ])

    assign(:incomplete_items, [
      TodoItem.create!(
        title: 'Not Completed'
      ),
      TodoItem.create!(
        title: "Not Completed"
      )
    ])
  end

  it "renders a list of todo_items" do
    render
    assert_select "tr>td", text: "Completed".to_s, count: 2
    assert_select "tr>td", text: "Not Completed".to_s, count: 2
  end
end
