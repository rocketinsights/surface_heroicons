defmodule Heroicons.Solid.StopIcon do
  @moduledoc "solid/stop.svg"
  use Surface.Component

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  def render(assigns) do
    ~F"""
    <svg class={@class} width="20" height="20" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18ZM8 7C7.44772 7 7 7.44772 7 8V12C7 12.5523 7.44772 13 8 13H12C12.5523 13 13 12.5523 13 12V8C13 7.44772 12.5523 7 12 7H8Z" fill="#4B5563"/>
    </svg>
    """
  end
end
