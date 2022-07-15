require_relative 'module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  # rubocop:disable Style/ExplicitBlockArgument
  def each
    @list.each { |item| yield item }
  end
  # rubocop:enable Style/ExplicitBlockArgument
end
