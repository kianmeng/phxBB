defmodule PhxBb.ForumFixtures do
  def reply_fixture(attrs \\ %{}) do
    {:ok, reply} =
      attrs
      |> Enum.into(%{body: "some body"})
      |> PhxBb.Replies.create_reply()

    reply
  end

  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{board_id: 1, body: "some body", title: "some title"})
      |> PhxBb.Posts.create_post()

    post
  end

  def board_fixture(attrs \\ %{}) do
    {:ok, board} =
      attrs
      |> Enum.into(%{name: "some name", description: "some description"})
      |> PhxBb.Boards.create_board()

    board
  end
end