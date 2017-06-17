class TodoList

  def initialize(array)
    @array = array
  end

  def get_items
    p @array
  end

  def add_item(str)
    @array << str
  end

  def delete_item(str)
    @array.delete(str)
  end

  def get_item(index)
    @array[index]
  end
end