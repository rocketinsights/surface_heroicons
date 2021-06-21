defmodule Heroicons.Solid.BookmarkIcon do
  @moduledoc "solid/bookmark.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  def render(assigns) do
    ~F"""
    <svg class={@class} width="20" height="20" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
    <path d="M5 4C5 2.89543 5.89543 2 7 2H13C14.1046 2 15 2.89543 15 4V18L10 15.5L5 18V4Z" fill="#4A5568"/>
    </svg>
    """
  end
end
