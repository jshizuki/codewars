class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.count
  end

  # returns the number of pages
  def page_count
    (item_count / @items_per_page.to_f ).ceil
  end

  # returns the number of items on the current page. page_idx is zero based.
  # this method should return -1 for page_idx values that are out of range
  def page_item_count(page_idx)
    boolean = true
    case boolean
      when page_idx < 0 then -1
      when page_idx + 1 > page_count then -1
      when page_idx == 0 && page_count > 1 then @items_per_page
      when page_idx == 0 && page_count - 1 == 0 then item_count
      when page_idx == page_count - 1 then item_count % @items_per_page
      else @items_per_page
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    (item_index > @collection.count - 1 || item_index < 0) ? -1 : item_index / @items_per_page
  end
end

test = PaginationHelper.new(['a','b','c','d','e','f'], 2)
p test.page_index(4)
