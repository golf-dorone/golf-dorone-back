module Mutations
  class CreateBlog < Mutations::BaseMutation
    argument :params, InputTypes::Blog, required: true

    field :blog, ObjectTypes::Blog, null: false

    def resolve(params:)
      blog = Blog.create!(params.to_h)

      { blog: blog }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end