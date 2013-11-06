class TaskCounterWidget < Apotomo::Widget
  responds_to_event :newTask, :with => :update, :passing => :root

  def display
    @count = Task.count
    render
  end

  def update
    replace :state => :display
  end

end
