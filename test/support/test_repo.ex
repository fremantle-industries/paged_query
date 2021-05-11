defmodule PagedQuery.TestRepo do
  use Ecto.Repo, otp_app: :paged_query, adapter: Ecto.Adapters.SQLite3
end
