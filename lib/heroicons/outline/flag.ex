defmodule Heroicons.Outline.FlagIcon do
  @moduledoc "outline/flag.svg"
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
    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2zm9-13.5V9"/>
    </svg>
    """
  end
end
