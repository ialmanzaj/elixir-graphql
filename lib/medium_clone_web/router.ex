defmodule MediumCloneWeb.Router do
  use MediumCloneWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MediumCloneWeb do
    pipe_through :api
  end
end
