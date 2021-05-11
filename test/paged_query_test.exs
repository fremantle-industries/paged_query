defmodule PagedQueryTest do
  use PagedQuery.DataCase
  import PagedQuery.Factory
  doctest PagedQuery

  test "returns a page_size of results by 0 indexed offset" do
    blog_1 = insert(:blog)
    blog_2 = insert(:blog)
    blog_3 = insert(:blog)

    assert TestRepo.aggregate(PagedQuery.Blog, :count) == 3

    query = from(PagedQuery.Blog, order_by: [asc: :inserted_at])

    page_1_blogs =
      query
      |> PagedQuery.call(0, 1)
      |> TestRepo.all()

    assert length(page_1_blogs) == 1
    assert Enum.at(page_1_blogs, 0).id == blog_1.id

    page_2_blogs =
      query
      |> PagedQuery.call(1, 1)
      |> TestRepo.all()

    assert length(page_2_blogs) == 1
    assert Enum.at(page_2_blogs, 0).id == blog_2.id

    page_3_blogs =
      query
      |> PagedQuery.call(2, 1)
      |> TestRepo.all()

    assert length(page_3_blogs) == 1
    assert Enum.at(page_3_blogs, 0).id == blog_3.id

    assert query
           |> PagedQuery.call(0, 3)
           |> TestRepo.aggregate(:count) == 3
  end
end
