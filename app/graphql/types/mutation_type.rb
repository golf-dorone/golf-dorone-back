module Types
  class MutationType < Types::BaseObject
    field :create_blog, mutation: Mutations::CreateBlog
    field :update_blog, mutation: Mutations::UpdateBlog
    field :delete_blog, mutation: Mutations::DeleteBlog

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
