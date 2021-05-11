ExUnit.configure(formatters: [ExUnit.CLIFormatter, ExUnitNotifier])
ExUnit.start()
{:ok, _} = PagedQuery.TestRepo.start_link()
Ecto.Adapters.SQL.Sandbox.mode(PagedQuery.TestRepo, :manual)
