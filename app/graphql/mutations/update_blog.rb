module Mutations
  class UpdateBlog < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :params, InputTypes::Blog, required: true

    field :blog, ObjectTypes::Blog, null: false

    def resolve(id:, params:)
      blog = Blog.find(id)
      blog.update!(params.to_h)

      { blog: blog }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end