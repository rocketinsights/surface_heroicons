defmodule Heroicons.Outline.ArrowCircleDownIcon do
  @moduledoc "outline/arrow-circle-down.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M15 13L12 16M12 16L9 13M12 16L12 8M12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12C21 16.9706 16.9706 21 12 21Z" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    """
  end
end
