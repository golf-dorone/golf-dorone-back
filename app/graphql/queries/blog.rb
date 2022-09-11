module Queries
  class Blog < Queries::BaseQuery
    argument :id, ID, required: true

    type ObjectTypes::Blog, null: false

    def resolve(id:)
      ::Blog.find(id)
    end
  end
end