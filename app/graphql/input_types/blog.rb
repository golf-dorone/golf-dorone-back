class InputTypes::Blog < Types::BaseInputObject
  graphql_name 'BlogAttributes' # ObjectTypes::Blogと名前がバッティングしないようにする

  argument :title, String, required: true
end