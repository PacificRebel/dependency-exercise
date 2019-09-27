require 'complete'

class ToString

  def to_string
    all.each_with_index.map { |todo, index|
      todo_to_string(todo, index + 1)
    }.join("\n")
  end

end
