defmodule Heroicons.Solid.ChartPieIcon do
  @moduledoc "solid/chart-pie.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill"
  prop fill, :string, default: "currentColor"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} viewBox="0 0 20 20" fill={@fill} aria-hidden="true">
    <path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"/>
    <path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"/>
    </svg>
    """
  end
end
