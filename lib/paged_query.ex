defmodule PagedQuery do
  require Ecto.Query
  import Ecto.Query

  @type page :: non_neg_integer
  @type page_size :: pos_integer

  @spec call(Ecto.Query.t(), page, page_size) :: Ecto.Query.t()
  def call(query, page, page_size) do
    page_offset = page * page_size

    query
    |> offset(^page_offset)
    |> limit(^page_size)
  end
end
