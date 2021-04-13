defmodule Heroicons.Outline.ChevronDoubleRightIcon do
  @moduledoc "outline/chevron-double-right.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M13 5L20 12L13 19M5 5L12 12L5 19" stroke="#374151" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
