defmodule Messengyr.Accounts do
  import Ecto.Changeset
  alias Messengyr.Accounts.User
  alias Messengyr.Repo

  @spec create_user(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) ::
          any
  def create_user(params) do
    %User{}
    |> cast(params, [:username, :email, :password])
    |> validate_required([:username, :email, :password])
    |> Repo.insert
  end
end
