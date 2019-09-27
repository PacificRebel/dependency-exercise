require 'complete'

describe "setting a todo to be complete" do
  it "sets a todo to be complete" do
    subject.add("say hi")
    expect(subject.get(0)[:complete]).to eq(false)
    subject.set_complete(0)

    expect(subject.get(0)[:complete]).to eq(true)
  end
end
