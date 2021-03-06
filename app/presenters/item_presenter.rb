class ItemPresenter < BasePresenter
  presents :item

  def show_items
    output = "#{item.quantity.to_int} #{item.unit} #{item.ingredient.title.downcase.pluralize(item.quantity)}"
    output << ", #{item.note.downcase}" if item.note.present?
    output
  end

  def show_link
    link_to("Recipes", root_path)
  end
end
