defmodule Heroicons.Solid.MinusCircleIcon do
  @moduledoc "solid/minus-circle.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">

    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM7 9C6.44772 9 6 9.44772 6 10C6 10.5523 6.44772 11 7 11H13C13.5523 11 14 10.5523 14 10C14 9.44772 13.5523 9 13 9H7Z" fill="#4A5568"/>
    </svg>
    """
  end
end
