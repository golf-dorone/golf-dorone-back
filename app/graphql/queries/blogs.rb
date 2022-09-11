module Queries
  class Blogs < Queries::BaseQuery

    type [ObjectTypes::Blog], null: false

    def resolve
      ::Blog.all.order(:id)
    end
  end
end