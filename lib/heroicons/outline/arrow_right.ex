defmodule Heroicons.Outline.ArrowRightIcon do
  @moduledoc "outline/arrow-right.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M14 5L21 12M21 12L14 19M21 12L3 12" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
