require 'to-string'

describe ToString
describe "showing todos as a string" do
  it "shows a list of 3 todos" do
    subject.add("say hi")
    subject.add("say howdy")
    subject.add("say yo")

    expect(subject.to_string)
      .to eq("1. say hi not complete\n2. say howdy not complete\n3. say yo not complete")
  end

private

def todo_to_string(todo, index)
  description = todo[:description]
  complete = todo_completion_to_string(todo)
  "#{index}. #{description} #{complete}"
end
