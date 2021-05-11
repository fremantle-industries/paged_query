import Mix.Config

config :paged_query, ecto_repos: [PagedQuery.TestRepo]

config :paged_query, PagedQuery.TestRepo, database: "./priv/test_repo/paged_query_#{Mix.env()}.db"

config :paged_query, PagedQuery.TestRepo,
  pool: Ecto.Adapters.SQL.Sandbox,
  show_sensitive_data_on_connection_error: true
