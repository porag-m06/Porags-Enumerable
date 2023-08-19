module MyEnumerable
  def my_all?
    each do |item|
      return false unless yield(item)
    end
    true
  end

  def my_any?
    each do |item|
      return true if yield(item)
    end
    false
  end

  def my_filter
    result = []
    each do |item|
      result << item if yield(item)
    end
    result
  end
end
