class ApplicationController < ActionController::API

  def all_formatted(array)
    array.map do |item|
      item.formatted
    end
  end

end
