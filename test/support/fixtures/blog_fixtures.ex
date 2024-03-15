defmodule Debug.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Debug.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        status: :unpublished,
        title: "some title"
      })
      |> Debug.Blog.create_post()

    post
  end
end
