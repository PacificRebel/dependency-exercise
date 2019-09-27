require "todo_list"

describe TodoList do
  let(:todo) { double(:todo) }
  let(:todo_class) { double(:todo_class, new: todo) }

  describe "creation" do
    it "creates a list with no todos" do
      expect(subject.get(0)).to be_nil
    end
  end

  describe "adding a todo" do
    it "stores a todo with a description" do
      expect(todo_class).to receive(:new)
      subject.add("say hi", todo_class)
      expect(subject.get(0)).to eq(todo)
    end

# should this be here?
    it "stores a todo that is incomplete" do
      subject.add("say hi")
      expect(subject.get(0)[:complete]).to eq(false)
    end
  end

  describe "getting a todo" do
    it "gets a todo at an index" do
      subject.add("say hi", todo_class)
      expect(subject.get(0)).to_not be_nil
    end
  end


  describe "getting a todo" do
    it "gets a todo at an index" do
      subject.add("say hi")
      expect(subject.get(0)).to_not be_nil
    end
  end
end
