defmodule Heroicons.Outline.PresentationChartLineIcon do
  @moduledoc "outline/presentation-chart-line.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  def render(assigns) do
    ~F"""
    <svg class={@class} width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
    <path d="M7 12L10 9L13 12L17 8M8 21L12 17L16 21M3 4H21M4 4H20V16C20 16.5523 19.5523 17 19 17H5C4.44772 17 4 16.5523 4 16V4Z" stroke="#374151" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
