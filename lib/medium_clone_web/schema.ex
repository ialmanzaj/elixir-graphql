defmodule MediumCloneWeb.Schema do
  use Absinthe.Schema

  alias MediumCloneWeb.Resolvers

  import_types(MediumCloneWeb.Schema.Types)

  query do
    @des "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do
    @des "Register a new user"
    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end
  end

end
