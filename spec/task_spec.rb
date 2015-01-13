require('rspec')
require('task')

describe(Task) do
  before() do
    Task.clear()
  end
  
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("charge the lion")
      expect(test_task.description()).to eq("charge the lion")
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to eq([])
    end
  end

  describe("#save") do
    it("add a task to the array of saved tasks") do
      test_task = Task.new("bother the badger")
      test_task.save()
      expect(Task.all()).to eq([test_task])
    end
  end

  describe(".clear") do
    it("empties out all the saved task") do
      Task.new("bother the badger").save()
      Task.clear()
      expect(Task.all()).to eq([])
    end
  end
end
