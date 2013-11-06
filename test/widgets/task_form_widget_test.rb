require 'test_helper'

class TaskFormWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:task_form)
  end
  
  test "display" do
    render_widget :task_form
    assert_select "h1"
  end
end
