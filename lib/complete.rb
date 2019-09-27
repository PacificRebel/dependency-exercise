require 'great'

class Complete

  def set_complete(index)
    get(index)[:complete] = true
  end

  private

  def todo_completion_to_string(todo)
    todo[:complete] ? "complete" : "not complete"
  end

end
