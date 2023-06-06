# frozen_string_literal: true

class User
  attr_acessor :name
  def initializer(name:)
    @name = name
  end
end
