defmodule Heroicons.Outline.UserCircleIcon do
  @moduledoc "outline/user-circle.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill"
  prop fill, :string, default: "none"

  @doc "svg stroke"
  prop stroke, :string, default: "currentColor"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} viewBox="0 0 24 24" stroke={@stroke} aria-hidden="true">
    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
    </svg>
    """
  end
end
