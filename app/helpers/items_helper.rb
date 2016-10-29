module ItemsHelper
  def show_items(item)
    output = "#{item.quantity.to_int} #{item.unit} #{item.ingredient.title.downcase.pluralize(item.quantity)}"
    output << ", #{item.note.downcase}" if item.note.present?
    output
  end
end
