defmodule Heroicons.Outline.ArrowSmDownIcon do
  @moduledoc "outline/arrow-sm-down.svg"
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
    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 13l-5 5m0 0l-5-5m5 5V6"/>
    </svg>
    """
  end
end
