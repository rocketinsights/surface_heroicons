defmodule Heroicons.Outline.SortDescendingIcon do
  @moduledoc "outline/sort-descending.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M3 4H16M3 8H12M3 12H12M17 8V20M17 20L13 16M17 20L21 16" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end