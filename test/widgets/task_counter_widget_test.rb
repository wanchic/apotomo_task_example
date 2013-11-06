require 'test_helper'

class TaskCounterWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:task_counter)
  end
  
  test "display" do
    render_widget :task_counter
    assert_select "h1"
  end
end
