class TaskFormWidget < Apotomo::Widget
  responds_to_event :submit

  def display
    render
  end

  def error(arg)
    @count = Task.count
    render + arg
  end

  def submit
    task = Task.create(task_params)
    trigger :newTask, :task => task
    replace :state => :display
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end

end
