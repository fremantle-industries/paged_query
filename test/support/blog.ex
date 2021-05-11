defmodule PagedQuery.Blog do
  use Ecto.Schema

  schema "blogs" do
    field(:title, :string)
    field(:body, :string)

    timestamps()
  end
end
