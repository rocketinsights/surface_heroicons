defmodule Heroicons.Solid.MinusIcon do
  @moduledoc "solid/minus.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M3 10C3 9.44772 3.44772 9 4 9L16 9C16.5523 9 17 9.44772 17 10C17 10.5523 16.5523 11 16 11L4 11C3.44772 11 3 10.5523 3 10Z" fill="#374151"/>
    </svg>
    """
  end
end