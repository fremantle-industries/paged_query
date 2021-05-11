defmodule PagedQuery.TestRepo.Migrations.CreateBlogs do
  use Ecto.Migration

  def change do
    create table(:blogs) do
      add(:title, :string, null: false)
      add(:body, :string, null: false)

      timestamps()
    end
  end
end
