module ItemsHelper
  def show_items(item)
    output = "#{item.quantity} #{item.unit} #{item.ingredient.title}"
    output << ", #{item.note}" if item.note.present?
    output
  end
end
