class TodoList
def initialize(items)
  @items = items
end

def get_items
  p @items
end

def add_item(item)
  @items << item
  p @items
end

def delete_item(item)
  @items.delete(item)
  p @items
end

end

