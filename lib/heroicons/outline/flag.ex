defmodule Heroicons.Outline.FlagIcon do
  @moduledoc "outline/flag.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M3 21V17M3 17V5C3 3.89543 3.89543 3 5 3H11.5L12.5 4H21L18 10L21 16H12.5L11.5 15H5C3.89543 15 3 15.8954 3 17ZM12 3.5V9" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
