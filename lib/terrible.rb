class TodoList
  def initialize
    @todos = []
  end
# included in 'great':
  def add(description)
    @todos << { description: description, complete: false }
  end

# included in 'complete'
  def set_complete(index)
    get(index)[:complete] = true
  end

# included in 'to-string'
  def to_string
    all.each_with_index.map { |todo, index|
      todo_to_string(todo, index + 1)
    }.join("\n")
  end

# included in 'great'
  def get(index)
    all[index]
  end

  private
 # included in 'great'
  def all
    @todos
  end

# included in 'to-string'
  def todo_to_string(todo, index)
    description = todo[:description]
    complete = todo_completion_to_string(todo)
    "#{index}. #{description} #{complete}"
  end

# included in 'to-string'
  def todo_completion_to_string(todo)
    todo[:complete] ? "complete" : "not complete"
  end
end
