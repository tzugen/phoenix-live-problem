defmodule Debug.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :status, Ecto.Enum, values: [:unpublished, :published, :deleted]
    field :title, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :status])
    |> validate_required([:title, :status])
  end
end
