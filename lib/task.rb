class Task
  @@all_task = []

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_task
  end

  define_method(:save) do
    @@all_task.push(self)
  end

  define_singleton_method(:clear) do
    @@all_task = []
  end
end
