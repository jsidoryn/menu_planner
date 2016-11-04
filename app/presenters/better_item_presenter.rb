class BetterItemPresenter < BasePresenter

  def initialize(item, view)
    @item = item
  end

  def show_items
    output = "#{@item.quantity.to_int} #{@item.unit} #{@item.ingredient.title.downcase.pluralize(@item.quantity)}"
    output << ", #{@item.note.downcase}" if @item.note.present?
    output
  end
end
