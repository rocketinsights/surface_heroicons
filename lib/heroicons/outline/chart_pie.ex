defmodule Heroicons.Outline.ChartPieIcon do
  @moduledoc "outline/chart-pie.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M11 3.05493C6.50005 3.55238 3 7.36745 3 12C3 16.9706 7.02944 21 12 21C16.6326 21 20.4476 17.5 20.9451 13H11V3.05493Z" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    <path d="M20.4878 9H15V3.5123C17.5572 4.41613 19.5839 6.44285 20.4878 9Z" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end