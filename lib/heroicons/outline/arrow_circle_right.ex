defmodule Heroicons.Outline.ArrowCircleRightIcon do
  @moduledoc "outline/arrow-circle-right.svg"
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
    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z"/>
    </svg>
    """
  end
end
