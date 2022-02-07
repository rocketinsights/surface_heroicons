defmodule Heroicons.Solid.MoonIcon do
  @moduledoc "solid/moon.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill"
  prop fill, :string, default: "currentColor"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} viewBox="0 0 20 20" fill={@fill} aria-hidden="true">
    <path d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z"/>
    </svg>
    """
  end
end
