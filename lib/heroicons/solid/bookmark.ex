defmodule Heroicons.Solid.BookmarkIcon do
  @moduledoc "solid/bookmark.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill"
  prop fill, :string, default: "currentColor"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} viewBox="0 0 20 20" fill={@fill} aria-hidden="true">
    <path d="M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z"/>
    </svg>
    """
  end
end
