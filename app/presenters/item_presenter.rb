class ItemPresenter
  def initialize(item)
    @item = item
  end

  def show_items
    output = "#{item.quantity.to_int} #{item.unit} #{item.ingredient.title.downcase.pluralize(item.quantity)}"
    output << ", #{item.note.downcase}" if item.note.present?
    output
  end

  attr_reader :item
end
